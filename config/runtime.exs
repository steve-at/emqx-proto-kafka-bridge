import Config

config :brod,
  clients: [
    kafka_client: [
      endpoints: [
        if(System.get_env("KAFKA_BOOTSTRAP_SERVER") == nil) do
          {:localhost, 9092}
        else
          bootstrap_server = System.get_env("KAFKA_BOOTSTRAP_SERVER")
          {bootstrap_server, String.to_integer(System.get_env("KAFKA_BOOTSTRAP_PORT"))}
        end
        ],
      auto_start_producers: true,
      compression: :gzip,
      # The following :ssl and :sasl configs are not
      # required when running kafka locally unauthenticated
      # ssl: true,
      sasl: {
        :scram_sha_512,
        System.get_env("KAFKA_USER") || "sasl_scram_user",
        System.get_env("KAFKA_PASSWORD") || "saSL_sCram_Passw0rd"
      }
    ]
  ]


config :proto_kafka_bridge,
  use_schema_registry: System.get_env("USE_SCHEMA_REGISTRY") || true,
  schema_registry: System.get_env("SCHEMA_REGISTRY_URL") ||"localhost:8081",
  schema_registry_user: System.get_env("SCHEMA_REGISTRY_USER") || "basic-auth-user",
  schema_registry_password: System.get_env("SCHEMA_REGISTRY_PASSWORD") || "basic-auth-pass",
  wrong_schema_topic_postfix: System.get_env("MISSING_SCHEMA_POSTFIX") || "no-schema"
