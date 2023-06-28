defmodule At.Srfg.Cits.Beta.Spatem.EventState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unavailable_event_state, 0
  field :dark, 1
  field :stop_Then_Proceed, 2
  field :stop_And_Remain, 3
  field :pre_Movement, 4
  field :permissive_Movement_Allowed, 5
  field :protected_Movement_Allowed, 6
  field :permissive_clearance, 7
  field :protected_clearance, 8
  field :caution_Conflicting_Traffic, 9
end

defmodule At.Srfg.Cits.Beta.Spatem.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :none, 0
  field :greenwave, 1
  field :ecoDrive, 2
  field :transit, 3
end

defmodule At.Srfg.Cits.Beta.Spatem.Confidence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unavailable_confidence, 0
  field :prec100ms, 1
  field :prec10ms, 2
  field :prec5ms, 3
  field :prec1ms, 4
  field :prec0_1ms, 5
  field :prec0_05ms, 6
  field :prec0_01ms, 7
end

defmodule At.Srfg.Cits.Beta.Spatem.SPATEM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Spatem.ItsPduHeader
  field :spat, 2, type: At.Srfg.Cits.Beta.Spatem.SPAT
end

defmodule At.Srfg.Cits.Beta.Spatem.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Spatem.SPAT do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeStamp, 1, type: :uint32
  field :name, 2, type: :string
  field :intersections, 3, repeated: true, type: At.Srfg.Cits.Beta.Spatem.IntersectionState
  field :regional, 4, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end

defmodule At.Srfg.Cits.Beta.Spatem.IntersectionState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: At.Srfg.Cits.Beta.Spatem.IntersectionReferenceID
  field :revision, 3, type: :uint32
  field :status, 4, type: :string
  field :moy, 5, type: :uint32
  field :timeStamp, 6, type: :uint32
  field :enabledLanes, 7, repeated: true, type: :uint32
  field :states, 8, repeated: true, type: At.Srfg.Cits.Beta.Spatem.MovementState

  field :maneuverAssistList, 9,
    repeated: true,
    type: At.Srfg.Cits.Beta.Spatem.ConnectionManeuverAssist

  field :regional, 10, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end

defmodule At.Srfg.Cits.Beta.Spatem.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Spatem.MovementState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :movementName, 1, type: :string
  field :signalGroup, 2, type: :uint32

  field :state_time_speed, 3,
    repeated: true,
    type: At.Srfg.Cits.Beta.Spatem.MovementEvent,
    json_name: "stateTimeSpeed"

  field :maneuverAssistList, 4,
    repeated: true,
    type: At.Srfg.Cits.Beta.Spatem.ConnectionManeuverAssist

  field :regional, 5, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end

defmodule At.Srfg.Cits.Beta.Spatem.MovementEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :eventState, 1, type: At.Srfg.Cits.Beta.Spatem.EventState, enum: true
  field :timing, 2, type: At.Srfg.Cits.Beta.Spatem.TimeChangeDetails
  field :speeds, 3, repeated: true, type: At.Srfg.Cits.Beta.Spatem.AdvisorySpeed
  field :regional, 4, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end

defmodule At.Srfg.Cits.Beta.Spatem.TimeChangeDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :startTime, 1, type: :uint32
  field :minEndTime, 2, type: :uint32
  field :maxEndTime, 3, type: :uint32
  field :likelyTime, 4, type: :uint32
  field :confidence, 5, type: :uint32
  field :nextTime, 6, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Spatem.AdvisorySpeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: At.Srfg.Cits.Beta.Spatem.Type, enum: true
  field :speed, 2, type: :uint32
  field :confidence, 3, type: At.Srfg.Cits.Beta.Spatem.Confidence, enum: true
  field :distance, 4, type: :uint32
  field :class, 5, type: :uint32
  field :regional, 6, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end

defmodule At.Srfg.Cits.Beta.Spatem.Regional do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Spatem.ConnectionManeuverAssist do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connectionID, 1, type: :uint32
  field :queueLength, 2, type: :uint32
  field :availableStorageLength, 3, type: :uint32
  field :waitOnStop, 4, type: :bool
  field :pedBicycleDetect, 5, type: :bool
  field :regional, 6, repeated: true, type: At.Srfg.Cits.Beta.Spatem.Regional
end