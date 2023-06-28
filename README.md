# EMQX Protobuf Kafka Bridge
This plugin takes received MQTT messages and forwards them to an Kafka broker. It takes the messages, looks up an Schema Registry, if there is a Schema defined for the given topic, then validats that the message is actual the required schema and produces it.
To Work it is required, that the required Protobuf schemas are (for now) provided at build time, in form of an Elixir Module see https://github.com/elixir-protobuf/protobuf.

## The plugin is based on the Example EMQX Elixir Plugin Template  
https://github.com/emqx/emqx-elixir-plugin#example-emqx-elixir-plugin-template

# demo usage:
   * take the plugin from the releases and add it to the broker
# actual usage:
   * download Repo
   * add proto schemas into the /protos folder (remove the demo ones)
   * use `protoc --elixir_out=../lib/proto_schemas/` from the `/protos` directory
      * requires protoc and `protobuf-elixir` https://github.com/elixir-protobuf/protobuf
   * run make
   * take the plugin from the directory `_build/prod/plugrelex/` and add it to the broker

   


# Protobuf requirements
   * The package name must be exactly the one from the schema registry



# TODO:
   * add handling if no schema registry is used
   * implement a scheduler that checks every x seconds for updated schemas, if registry is not available keep last prefix
   * implement way to add new Protobuf schemas on the fly or via make file



## Features:


   * mqtt topics will result in kafka topics only with . instead of /
   * schemas for Kafka topics are only checked at the beginning of an subscription right now. Every message is checked if it can be decoded with the given schema
   * works with the Confluent Schema registry
   * if the schema cannot be decoded, the message is produced to a different topic [mqtt: some/topic, kafka-schema ->  some.topic-no-schema, kafka+schema -> some.topic ]
   * When a schema is used, the neccecary prefix is added to the messages. https://docs.confluent.io/platform/current/schema-registry/fundamentals/serdes-develop/index.html#wire-format