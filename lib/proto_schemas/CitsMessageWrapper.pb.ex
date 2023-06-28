defmodule At.Srfg.Flowmotion.Trajectories.Proto.Serialization do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :JSON, 0
  field :PROTO, 1
  field :XML, 2
  field :UPER, 3
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.ITSMessageID do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denm, 0
  field :cam, 1
  field :poi, 2
  field :spatem, 3
  field :mapem, 4
  field :ivim, 5
  field :ev_rsr, 6
  field :tistpgtransaction, 7
  field :srem, 8
  field :ssem, 9
  field :evcsn, 10
  field :saem, 11
  field :rtcmem, 12
  field :cpm, 13
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.CitsMessageWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :payload, 0

  field :station_id, 1, type: :string, json_name: "stationId"

  field :message_id, 2,
    type: At.Srfg.Flowmotion.Trajectories.Proto.ITSMessageID,
    json_name: "messageId",
    enum: true

  field :uuid, 3, type: :string
  field :provider, 4, type: :string
  field :timestamp, 5, type: :uint64
  field :format_version, 6, type: :uint32, json_name: "formatVersion"
  field :schema_uri, 7, type: :string, json_name: "schemaUri"

  field :serialized_message, 8,
    type: At.Srfg.Flowmotion.Trajectories.Proto.SerializedMessage,
    json_name: "serializedMessage",
    oneof: 0

  field :in_reply_to, 9, type: :string, json_name: "inReplyTo"
  field :trace, 25, type: At.Srfg.Flowmotion.Trajectories.Proto.Trace
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.SerializedMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :serialization, 1, type: At.Srfg.Flowmotion.Trajectories.Proto.Serialization, enum: true
  field :payload, 2, type: :bytes
end