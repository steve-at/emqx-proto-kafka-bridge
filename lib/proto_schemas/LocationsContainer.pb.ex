defmodule At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: At.Srfg.Flowmotion.Trajectories.Proto.Value
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :trajectory_id, 1, type: :string, json_name: "trajectoryId"
  field :timestamp, 2, type: :uint64
  field :source, 6, type: :string
  field :owner, 7, type: :string

  field :tags, 8,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer.TagsEntry,
    map: true

  field :locations, 9, repeated: true, type: At.Srfg.Flowmotion.Trajectories.Proto.Location
  field :trace, 25, type: At.Srfg.Flowmotion.Trajectories.Proto.Trace
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Location.TagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: At.Srfg.Flowmotion.Trajectories.Proto.Value
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Location.AdditionalNumericsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: At.Srfg.Flowmotion.Trajectories.Proto.NumericValue
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Location.TimeSeriesFragmentsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesFragment
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Location do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :t, 1, type: :sint32
  field :x, 2, type: :double
  field :y, 3, type: :double
  field :z, 4, type: :sint32

  field :tags, 5,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.Location.TagsEntry,
    map: true

  field :additional_numerics, 6,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.Location.AdditionalNumericsEntry,
    json_name: "additionalNumerics",
    map: true

  field :time_series_fragments, 7,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.Location.TimeSeriesFragmentsEntry,
    json_name: "timeSeriesFragments",
    map: true
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.Value do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value_type, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :float_value, 2, type: :float, json_name: "floatValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :pos_int_value, 4, type: :uint32, json_name: "posIntValue", oneof: 0
  field :neg_int_value, 5, type: :uint32, json_name: "negIntValue", oneof: 0
  field :pos_long_value, 6, type: :uint64, json_name: "posLongValue", oneof: 0
  field :neg_long_value, 7, type: :uint64, json_name: "negLongValue", oneof: 0
  field :bool_value, 8, type: :bool, json_name: "boolValue", oneof: 0
  field :json_value, 9, type: :string, json_name: "jsonValue", oneof: 0
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.NumericValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value_type, 0

  field :float_value, 1, type: :float, json_name: "floatValue", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :pos_int_value, 3, type: :uint32, json_name: "posIntValue", oneof: 0
  field :neg_int_value, 4, type: :uint32, json_name: "negIntValue", oneof: 0
  field :pos_long_value, 5, type: :uint64, json_name: "posLongValue", oneof: 0
  field :neg_long_value, 6, type: :uint64, json_name: "negLongValue", oneof: 0
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesFragment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time_series_entry, 1,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesEntry,
    json_name: "timeSeriesEntry"
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesEntry.ValuesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: At.Srfg.Flowmotion.Trajectories.Proto.NumericValue
end

defmodule At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :t, 1, type: :sint64

  field :values, 2,
    repeated: true,
    type: At.Srfg.Flowmotion.Trajectories.Proto.TimeSeriesEntry.ValuesEntry,
    map: true
end