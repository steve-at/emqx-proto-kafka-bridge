defmodule ProtoKafkaBridge.MixProject do
  use Mix.Project

  @emqx_metadata_vsn "0.2.0"

  def project do
    [
      app: :proto_kafka_bridge,
      version: "0.2.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      # we don't consolidate protocols to avoid clashes with other
      # plugins or Elixir itself which is possibly running inside the
      # EMQX node.
      consolidate_protocols: false,
      deps: deps(),
      releases: releases()
    ]
  end

  def application() do
    [
      extra_applications: [
        :brod
      ],
      mod: {ProtoKafkaBridge.Application, []}
    ]
  end

  def releases() do
    [
      # NOTE: this must be named the same as the application!
      proto_kafka_bridge: [
        applications: [
          proto_kafka_bridge: :permanent
        ],
        # config_providers: [
        #   {EnvConfigProvider, ""}
        # ],
        include_erts: false,
        steps: [
          :assemble,
          &adjust/1,
          &emqx_tar/1
        ],
        emqx_plugin_info: %{
          authors: ["Stefan Eisl"],
          builder: %{
            name: "Stefan Eisl",
            contact: "stefan.eisl@live.at",
            website: ""
          },
          repo: "https://github.com/steve_at/emqx-proto-kafka-bridge",
          functionality: ["Protobuf based Schema aware MQTT to Kafka bridge"],
          compatibility: %{
            emqx: "~> 5.0"
          },
          description: "This plugin takes MQTT messages and forwards them to Kafka. It uses a schema registry to validate that the messages are valid according to the proto spec and published it to a kafka."
        },
        emqx_plugin_opts: [
          include_src?: true,
          exclude_elixir?: false
        ]
      ]
    ]
  end

  defp adjust(release) do
    for {app, config} <- release.applications,
        auto_included_app?(app, config, release.options) do
      dir = "#{app}-#{config[:vsn]}"

      [release.path, "lib", dir]
      |> Path.join()
      |> File.rm_rf!()
    end

    # no need for the `releases` dir, but the dir itself must exist.
    release.path
    |> Path.join("releases")
    |> File.rm_rf!()

    release.path
    |> Path.join("releases")
    |> File.mkdir!()

    release
  end

  defp emqx_tar(release) do
    overwrite? = Keyword.get(release.options, :overwrite, false)
    release_basename = "#{release.name}-#{release.version}"
    readme_path = "README.md"

    # include src files
    include_src? = get_in(release.options, [:emqx_plugin_opts, :include_src?])
    if include_src? do
      for dir <- Mix.Project.config()[:elixirc_paths] do
        File.cp_r!(
          dir,
          Path.join([
            release.path,
            "lib",
            release_basename,
            dir
          ])
        )
      end
    end
    IO.puts("release: #{inspect(release.applications)}")
    lib_dirs =
      Enum.reduce(release.applications, [], fn {app, config}, acc ->
        if auto_included_app?(app, config, release.options) do
          acc
        else
          dir = "#{app}-#{config[:vsn]}"
          [dir | acc]
        end
      end)

    readme =
      if File.exists?(readme_path) do
        name_in_tar =
          release_basename
          |> Path.join(readme_path)
          |> to_charlist()

        path_to_compress = to_charlist(readme_path)

        [{name_in_tar, path_to_compress}]
      else
        []
      end

    lib_files =
      lib_dirs
      |> Enum.filter(&File.exists?(Path.join([release.path, "lib", &1])))
      |> Enum.map(fn filename ->
        name_in_tar =
          release_basename
          |> Path.join(filename)
          |> to_charlist()

        path_to_compress =
          [release.path, "lib", filename]
          |> Path.join()
          |> to_charlist()

        {name_in_tar, path_to_compress}
      end)

    release_json_contents = make_plugin_release_json(release, lib_dirs)
    release_json_path = Path.join([release.path, "release.json"])
    Mix.Generator.create_file(release_json_path, release_json_contents, force: overwrite?)

    release_json = [
      {
        to_charlist(Path.join(release_basename, "release.json")),
        to_charlist(release_json_path)
      }
    ]

    files = lib_files ++ readme ++ release_json

    out_dir =
      Path.join([
        Mix.Project.build_path(),
        "plugrelex",
        to_string(release.name)
      ])

    Mix.Generator.create_directory(out_dir, force: overwrite?)
    out_path = Path.join(out_dir, "#{release_basename}.tar.gz")

    Mix.shell().info([:green, "* building ", :reset, out_path])

    :ok = :erl_tar.create(to_charlist(out_path), files, [:dereference, :compressed])

    release
  end

  defp make_plugin_release_json(release, lib_dirs) do
    extra_info = %{
      name: release.name,
      rel_vsn: release.version,
      rel_apps: lib_dirs,
      git_ref: git_ref(),
      git_commit_or_build_date: get_date(),
      metadata_vsn: @emqx_metadata_vsn,
      built_on_otp_release: System.otp_release(),
      built_on_elixir_release: System.version()
    }

    release.options[:emqx_plugin_info]
    |> Map.merge(extra_info)
    |> Jason.encode!(pretty: true)
  end

  defp git_ref() do
    res = System.cmd("git", ["rev-parse", "HEAD"])

    case res do
      {ref, 0} ->
        String.trim(ref)

      {_, _} ->
        "unknown"
    end
  end

  defp get_date() do
    res =
      System.cmd(
        "git",
        ["log", "-1", "--pretty=format:'%cd'", "--date=format:'%Y-%m-%d'"]
      )

    case res do
      {date, 0} ->
        String.trim(date)

      {_, _} ->
        to_string(Date.utc_today())
    end
  end

  defp auto_included_app?(app, config, opts) do
    exclude_elixir? = get_in(opts, [:emqx_plugin_opts, :exclude_elixir?])
    (exclude_elixir? and app in [:elixir, :iex]) or config[:otp_app?]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # This is just for building the tarball.  Remove `runtime:
      # false` if your application depends on this lib.
      {:jason, "~> 1.4", runtime: false},
      # If your plugin depends on emqx, you may include it here.  Be
      # sure to use `runtime: false`.
      {:emqx,
       git: "https://github.com/emqx/emqx",
       ref: "d7d0525733473f6d5f9b528c37c86e0a3280f26b",
       sparse: "apps/emqx",
       runtime: false},
      # temporarily needed due to clashing dependencies of
      # dependencies of emqx.
      {:cowlib, "2.8.0", override: true, runtime: false},
      # These are dependencies for your plugin
      {:brod, "~> 3.16.2"},
      {:httpoison, "~> 2.1"},
      {:protobuf, "~> 0.12.0"},
      # {:poison, "~> 5.0"}

    ]
  end
end
