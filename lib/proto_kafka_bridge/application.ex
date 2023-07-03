defmodule ProtoKafkaBridge.Application do
  use Application

  @moduledoc false


  @impl Application
  def start(_type, _args) do
    Application.put_env(:brod, :clients, [
      kafka_client: [
        endpoints: [
          if(System.get_env("KAFKA_BOOTSTRAP_SERVER") == nil) do
            {:localhost, 9092}
          else
            bootstrap_server = System.get_env("KAFKA_BOOTSTRAP_SERVER", "localhost")
            {bootstrap_server, String.to_integer(System.get_env("KAFKA_BOOTSTRAP_PORT", "29092"))}
          end
        ],
        auto_start_producers: true,
        compression: :gzip,
        # The following :ssl and :sasl configs are not
        # required when running kafka locally unauthenticated
        # ssl: true,
        sasl: {
          :scram_sha_512,
          System.get_env("KAFKA_USER", "sasl_scram_user"),
          System.get_env("KAFKA_PASSWORD", "saSL_sCram_Passw0rd")
        }
      ]
    ])
    Application.put_env(:proto_kafka_bridge, :use_schema_registry, System.get_env("USE_SCHEMA_REGISTRY", "true"))
    Application.put_env(:proto_kafka_bridge, :schema_registry, System.get_env("SCHEMA_REGISTRY_URL") || "localhost:8081")
    Application.put_env(:proto_kafka_bridge, :schema_registry_user, System.get_env("SCHEMA_REGISTRY_USER") || "basic-auth-user")
    Application.put_env(:proto_kafka_bridge, :schema_registry_password, System.get_env("SCHEMA_REGISTRY_PASSWORD") || "basic-auth-pass")
    Application.put_env(:proto_kafka_bridge, :wrong_schema_topic_postfix, System.get_env("MISSING_SCHEMA_POSTFIX") || "no-schema")

    children = [
      %{
        id: ProtoKafkaBridge,
        start: {ProtoKafkaBridge, :start_link, []},
        type: :worker
      },

    ]

    opts = [strategy: :one_for_one, name: ProtoKafkaBridge.Supervisor]

    # put any start up your plugin has to do here
    with pid when is_pid(pid) <- Process.whereis(:emqx_hooks) do
      :emqx_hooks.add(:"client.authorize", {ProtoKafkaBridge, :map_client, []}, 500)
      :emqx_hooks.add(:"message.publish", {ProtoKafkaBridge, :produce, []}, 1000)
    end

    Supervisor.start_link(children, opts)
  end

  @impl Application
  def stop(_state) do
    # put any clean up your plugin has to do when being stopped here
    with pid when is_pid(pid) <- Process.whereis(:emqx_hooks) do
      :emqx_hooks.del(:"client.authorize", {ProtoKafkaBridge, :map_client, []})
      :emqx_hooks.del(:"message.publish", {ProtoKafkaBridge, :produce, []})
    end

    :ok
  end
end
