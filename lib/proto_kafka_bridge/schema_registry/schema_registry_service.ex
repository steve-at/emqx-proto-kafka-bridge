defmodule ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService do
  require Logger

  def get_schema_prefix(topic_name, schema_registry_response, msg) do

    {:ok, schema_canidates, id} = get_proto_schemas_for_topic(topic_name, schema_registry_response)

    {:ok, schema} = find_schema_from_canidates(schema_canidates, msg)

    prefix = build_prefix(id)

    {schema, prefix}
  end


  def fetch_schema_registry_response(options) do
    HTTPoison.get!(options.schema_registry_uri, options.http_opts)
  end
  def build_prefix(id) do

    # first byte is Magic byte, then 4 bytes for the id and a last one for an index
    <<0, id::size(32)>>
  end



  def find_schema_from_canidates(canidates, msg) do
    Enum.map(canidates, fn (schema) ->
      Logger.info("Trying to decode with schema: #{schema}")
      ProtoKafkaBridge.Core.try_decode(schema, msg)
    end)
    |> Enum.find(fn ({status, _}) -> status == :ok end)
  end



  def extract_package_name(schema_as_string) do
    schema_as_string
    |> String.split("package")
    |> Enum.at(1)
    |> String.trim()
    |> String.split(";")
    |> Enum.at(0)
    |> String.split(".")
    |> Enum.map(fn part -> String.capitalize(part) end)
    |> Enum.join(".")
  end

  def extract_message_names(schema) do
    [_ | messages] =
      schema
      |> String.split("message")

    messages
    |> Enum.map(fn msg -> String.replace(msg, " ", "") end)
    |> Enum.map(fn msg -> String.split(msg, "{") |> Enum.at(0) end)
  end

  def get_proto_schemas_for_topic(topic_name, response) do
    topic_regex = ~r/#{topic_name}/

    schema =
      response.body
      |> Jason.decode!()
      |> Enum.filter(fn e -> String.match?(String.downcase(e["subject"]), topic_regex) end)
      |> Enum.max_by(fn schema -> schema["version"] end)


    package = extract_package_name(schema["schema"])

    message_canidates =
      extract_message_names(schema["schema"])
      |> Enum.map(fn canidate -> package <> "." <> canidate end)

    {:ok, message_canidates, schema["id"]}

  end

end
