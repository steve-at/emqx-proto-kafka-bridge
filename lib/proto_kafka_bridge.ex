defmodule ProtoKafkaBridge do
  use GenServer
  require Logger
  @moduledoc """
  A dummy example server
  """
alias ElixirSense.Log

  def start_link() do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def produce(msg) do
    GenServer.cast(__MODULE__, {:produce, msg})
    {:ok, msg}
  end

  def map_client(msg) do
    GenServer.cast(__MODULE__, {:map_client, msg})
    {:ok, msg}
  end

  @impl GenServer
  def init(_) do
    schema_registry_user = Application.get_env(:proto_kafka_bridge, :schema_registry_user)
    schema_registry_password = Application.get_env(:proto_kafka_bridge, :schema_registry_password)

    schema_registry_auth_token =
      Base.encode64("#{schema_registry_user}:#{schema_registry_password}")

    opts = [
      {"Content-Type", "application/json"},
      {"Authorization", "Basic #{schema_registry_auth_token}"}
    ]

    schema_registry_uri = Application.get_env(:proto_kafka_bridge, :schema_registry)
    Logger.info("Schema registry uri: #{schema_registry_uri}")
    Logger.info("Schema registry user: #{schema_registry_user}")
    # Logger.info("Schema registry password: #{schema_registry_password}")

    options = %{
      schema_registry_uri: schema_registry_uri <> "/schemas",
      http_opts: opts,
      wrong_schema_topic_postfix: Application.get_env(:proto_kafka_bridge, :wrong_schema_topic_postfix),
      use_schema_registry: Application.get_env(:proto_kafka_bridge, :use_schema_registry),
    }

    {:ok, %{topic_mapping: %{}, schema_prefix: %{}, schema_mapping: %{}, options: options}}
  end

  @impl GenServer
  def handle_cast({:produce, msg}, state) do
    message = :emqx_message.to_map(msg)
    Logger.info("Producing message to topic: #{message.topic}")
    kafka_topic = Map.get(state.topic_mapping, message.topic)
    schema_prefix = Map.get(state.schema_prefix, kafka_topic)
    proto_schema = Map.get(state.schema_mapping, kafka_topic)

    ProtoKafkaBridge.Kafka.KafkaProducer.produce( message, kafka_topic, schema_prefix, proto_schema, state.options)

    {:noreply, state}


  end


  @impl GenServer
  def handle_cast({:map_client, msg}, state) do
    message = :emqx_message.to_map(msg)
    if Map.has_key?(state.topic_mapping, message.topic) do
      {:noreply, state}
    else
      kafka_topic_name = message.topic |> String.downcase() |> String.replace("/", ".")

      schema_registry_response =
        ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.fetch_schema_registry_response(
          state.options
        )

      {proto_schema, schema_prefix} =
        ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.get_schema_prefix(
          kafka_topic_name,
          schema_registry_response,
          message.payload
        )

      new_topic_mapping = Map.put(state.topic_mapping, message.topic, kafka_topic_name)
      new_schema_prefix = Map.put(state.schema_prefix, kafka_topic_name, schema_prefix)
      new_schema_mapping = Map.put(state.schema_mapping, kafka_topic_name, proto_schema)

      {:noreply,
       %{
         state
         | topic_mapping: new_topic_mapping,
           schema_prefix: new_schema_prefix,
           schema_mapping: new_schema_mapping
       }}
    end
  end
end
