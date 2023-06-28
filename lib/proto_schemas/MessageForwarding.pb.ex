defmodule At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessageID do
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

defmodule At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.Encoding do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UPER, 0
  field :XER, 1
  field :PROTO, 2
  field :SIGNEDUPER, 3
end

defmodule At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.MessageForwardRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :originator, 1, type: :string
  field :uuid, 2, type: :string
  field :timestamp, 3, type: Google.Protobuf.Timestamp
  field :relevance_areas, 4, repeated: true, type: :string, json_name: "relevanceAreas"
  field :repetition_rate, 5, type: :double, json_name: "repetitionRate"
  field :duration, 6, type: :uint32
  field :message, 7, type: At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessage

  field :message_id, 8,
    type: At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessageID,
    json_name: "messageId",
    enum: true

  field :update_interval, 9, type: :uint32, json_name: "updateInterval"
  field :in_reply_to, 10, type: :string, json_name: "inReplyTo"
end

defmodule At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.IngressRSUForwarding do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :originator, 1, type: :string
  field :uuid, 2, type: :string
  field :timestamp, 3, type: Google.Protobuf.Timestamp
  field :message, 4, type: At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessage

  field :message_id, 5,
    type: At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessageID,
    json_name: "messageId",
    enum: true

  field :in_reply_to, 6, type: :string, json_name: "inReplyTo"
end

defmodule At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.ITSMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :bytes
  field :hash, 2, type: :bytes

  field :encoding, 3,
    type: At.Srfg.Cits.Common.Entity.Protobuf.MessageForwarding.Encoding,
    enum: true
end