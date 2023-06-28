defmodule At.Srfg.Flowmotion.Trajectories.Proto.Trace.AdditionalTracesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :uint64
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Trace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :trace_list, 1,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.TraceEntry,
    json_name: "traceList"

  field :additional_traces, 2,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.Trace.AdditionalTracesEntry,
    json_name: "additionalTraces",
    map: true
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.TraceEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :timestamp, 2, type: :uint64
end