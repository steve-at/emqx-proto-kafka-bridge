defmodule ProtoKafkaBridge.Kafka.KafkaProducer do
  require Logger

  def produce(msg, topic, schema_prefix, proto_schema, options) do
    case ProtoKafkaBridge.Core.try_decode(proto_schema, msg) do
      {:ok, _} ->
        :brod.produce_sync(:kafka_client, topic, :hash, msg.topic, schema_prefix <> msg.payload)

      {:error, _} ->
        :brod.produce_sync(
          :kafka_client,
          "#{topic}-#{options.wrong_schema_topic_postfix}",
          :hash,
          msg.topic,
          msg.payload
        )

        Logger.info(
          "The message is not of the type #{proto_schema}. Producing it to the no schema topic"
        )
    end
  end
end
