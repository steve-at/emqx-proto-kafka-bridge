import Config

config :brod,
  clients: [
    kafka_client: [
      endpoints: [
        # "mdi-shared-local.develop": 32100,
        localhost: 9092,
        ],
      auto_start_producers: true,
      compression: :gzip,
      # The following :ssl and :sasl configs are not
      # required when running kafka locally unauthenticated
      # ssl: true,
      sasl: {
        :scram_sha_512,
        "kafka-ui-user",
        "ZLCCz7fhslQt3q4ho3nXmwcJM2pE3K96"
      }
    ]
  ]


config :proto_kafka_bridge,
  use_schema_registry: true,
  schema_registry: "localhost:8081",
  schema_registry_user: "cits-to-streams",
  schema_registry_password: "CITS123123",
  wrong_schema_topic_postfix: "no-schema"
