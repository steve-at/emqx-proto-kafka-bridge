defmodule ProtoKafkaBridge.Application do
  use Application

  @moduledoc false

  @impl Application
  def start(_type, _args) do
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
