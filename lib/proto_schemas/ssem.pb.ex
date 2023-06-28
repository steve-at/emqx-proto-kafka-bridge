defmodule At.Srfg.Cits.Beta.Ssem.Role do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :basicVehicle, 0
  field :publicTransport, 1
  field :specialTransport, 2
  field :dangerousGoods, 3
  field :roadWork, 4
  field :roadRescue, 5
  field :emergency, 6
  field :safetyCar, 7
  field :none_unknown, 8
  field :truck, 9
  field :motorcycle, 10
  field :roadSideSource, 11
  field :police, 12
  field :fire, 13
  field :ambulance, 14
  field :dot, 15
  field :transit, 16
  field :slowMoving, 17
  field :stopNgo, 18
  field :cyclist, 19
  field :pedestrian, 20
  field :nonMotorized, 21
  field :military, 22
end

defmodule At.Srfg.Cits.Beta.Ssem.Subrole do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :requestSubRoleUnKnown, 0
  field :requestSubRole1, 1
  field :requestSubRole2, 2
  field :requestSubRole3, 3
  field :requestSubRole4, 4
  field :requestSubRole5, 5
  field :requestSubRole6, 6
  field :requestSubRole7, 7
  field :requestSubRole8, 8
  field :requestSubRole9, 9
  field :requestSubRole10, 10
  field :requestSubRole11, 11
  field :requestSubRole12, 12
  field :requestSubRole13, 13
  field :requestSubRole14, 14
  field :requestSubRoleReserved, 15
end

defmodule At.Srfg.Cits.Beta.Ssem.Request do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :requestImportanceLevelUnKnown, 0
  field :requestImportanceLevel1, 1
  field :requestImportanceLevel2, 2
  field :requestImportanceLevel3, 3
  field :requestImportanceLevel4, 4
  field :requestImportanceLevel5, 5
  field :requestImportanceLevel6, 6
  field :requestImportanceLevel7, 7
  field :requestImportanceLevel8, 8
  field :requestImportanceLevel9, 9
  field :requestImportanceLevel10, 10
  field :requestImportanceLevel11, 11
  field :requestImportanceLevel12, 12
  field :requestImportanceLevel13, 13
  field :requestImportanceLevel14, 14
  field :requestImportanceReserved, 15
end

defmodule At.Srfg.Cits.Beta.Ssem.HpmsType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :none, 0
  field :unknown, 1
  field :special, 2
  field :moto, 3
  field :car, 4
  field :carOther, 5
  field :bus, 6
  field :axleCnt2, 7
  field :axleCnt3, 8
  field :axleCnt4, 9
  field :axleCnt4Trailer, 10
  field :axleCnt5Trailer, 11
  field :axleCnt6Trailer, 12
  field :axleCnt5MultiTrailer, 13
  field :axleCnt6MultiTrailer, 14
  field :axleCnt7MultiTrailer, 15
end

defmodule At.Srfg.Cits.Beta.Ssem.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unknown_status, 0
  field :requested, 1
  field :processing, 2
  field :watchOtherTraffic, 3
  field :granted, 4
  field :rejected, 5
  field :maxPresence, 6
  field :reserviceLocked, 7
end

defmodule At.Srfg.Cits.Beta.Ssem.SSEM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Ssem.ItsPduHeader
  field :ssm, 2, type: At.Srfg.Cits.Beta.Ssem.SignalStatusMessage
end

defmodule At.Srfg.Cits.Beta.Ssem.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ssem.SignalStatusMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeStamp, 1, type: :uint32
  field :second, 2, type: :uint32
  field :sequenceNumber, 3, type: :uint32
  field :status, 4, repeated: true, type: At.Srfg.Cits.Beta.Ssem.SignalStatus
  field :regional, 5, repeated: true, type: At.Srfg.Cits.Beta.Ssem.Regional
end

defmodule At.Srfg.Cits.Beta.Ssem.SignalStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequenceNumber, 1, type: :uint32
  field :id, 2, type: At.Srfg.Cits.Beta.Ssem.IntersectionReferenceID
  field :sigStatus, 3, repeated: true, type: At.Srfg.Cits.Beta.Ssem.SignalStatusPackage
  field :regional, 4, repeated: true, type: At.Srfg.Cits.Beta.Ssem.Regional
end

defmodule At.Srfg.Cits.Beta.Ssem.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ssem.SignalStatusPackage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :requester, 1, type: At.Srfg.Cits.Beta.Ssem.SignalRequesterInfo
  field :inboundOn, 2, type: At.Srfg.Cits.Beta.Ssem.IntersectionAccessPoint
  field :outboundOn, 3, type: At.Srfg.Cits.Beta.Ssem.IntersectionAccessPoint
  field :minute, 4, type: :uint32
  field :second, 5, type: :uint32
  field :duration, 6, type: :uint32
  field :status, 7, type: At.Srfg.Cits.Beta.Ssem.Status, enum: true
  field :regional, 8, repeated: true, type: At.Srfg.Cits.Beta.Ssem.Regional
end

defmodule At.Srfg.Cits.Beta.Ssem.SignalRequesterInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :id, 0

  field :entityID, 1, type: :string, oneof: 0
  field :stationID, 2, type: :uint32, oneof: 0
  field :request, 3, type: :uint32
  field :sequenceNumber, 4, type: :uint32
  field :role, 5, type: At.Srfg.Cits.Beta.Ssem.Role, enum: true
  field :typeData, 6, type: At.Srfg.Cits.Beta.Ssem.RequestorType
end

defmodule At.Srfg.Cits.Beta.Ssem.Id do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entityID, 1, type: :string
  field :stationID, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ssem.RequestorType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :role, 1, type: At.Srfg.Cits.Beta.Ssem.Role, enum: true
  field :subrole, 2, type: At.Srfg.Cits.Beta.Ssem.Subrole, enum: true
  field :request, 3, type: At.Srfg.Cits.Beta.Ssem.Request, enum: true
  field :iso3883, 4, type: :uint32
  field :hpmsType, 5, type: At.Srfg.Cits.Beta.Ssem.HpmsType, enum: true
  field :regional, 6, type: At.Srfg.Cits.Beta.Ssem.Regional
end

defmodule At.Srfg.Cits.Beta.Ssem.Regional do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Ssem.IntersectionAccessPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :intersectionAccessPoint, 0

  field :approach, 1, type: :uint32, oneof: 0
  field :connection, 2, type: :uint32, oneof: 0
  field :lane, 3, type: :uint32, oneof: 0
end