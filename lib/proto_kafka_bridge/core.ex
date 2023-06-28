defmodule ProtoKafkaBridge.Core do
  require Logger

  def try_decode(schema, msg) do

    eval_string = "#{schema}.decode(msg)"

    try do
      {_decoded, _} = Code.eval_string(eval_string,[msg: msg])
      Logger.info("Decoded with schema: #{schema}. Setting this as the schema for the topic")
      {:ok, schema}
    rescue
      _ ->
        {:error, "#{schema} does not match the type of the message"}
    end

  end
end
