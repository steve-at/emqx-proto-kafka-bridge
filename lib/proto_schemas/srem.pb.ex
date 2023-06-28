defmodule At.Srfg.Cits.Beta.Srem.RequestType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priorityRequestTypeReserved, 0
  field :priorityRequest, 1
  field :priorityRequestUpdate, 2
  field :priorityCancellation, 3
end

defmodule At.Srfg.Cits.Beta.Srem.Role do
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

defmodule At.Srfg.Cits.Beta.Srem.Subrole do
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

defmodule At.Srfg.Cits.Beta.Srem.Request do
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

defmodule At.Srfg.Cits.Beta.Srem.HpmsType do
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

defmodule At.Srfg.Cits.Beta.Srem.Transmisson do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :neutral, 0
  field :park, 1
  field :forwardGears, 2
  field :reverseGears, 3
  field :reserved1, 4
  field :reserved2, 5
  field :reserved3, 6
  field :unavailable, 7
end

defmodule At.Srfg.Cits.Beta.Srem.TransitOccupancy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :occupancyUnknown, 0
  field :occupancyEmpty, 1
  field :occupancyVeryLow, 2
  field :occupancyLow, 3
  field :occupancyMed, 4
  field :occupancyHigh, 5
  field :occupancyNearlyFull, 6
  field :occupancyFull, 7
end

defmodule At.Srfg.Cits.Beta.Srem.SREM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Srem.ItsPduHeader
  field :srm, 2, type: At.Srfg.Cits.Beta.Srem.SignalRequestMessage
end

defmodule At.Srfg.Cits.Beta.Srem.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Srem.SignalRequestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeStamp, 1, type: :uint32
  field :second, 2, type: :uint32
  field :sequenceNumber, 3, type: :uint32
  field :requests, 4, repeated: true, type: At.Srfg.Cits.Beta.Srem.SignalRequestPackage
  field :requestor, 5, type: At.Srfg.Cits.Beta.Srem.RequestorDescription
  field :regional, 6, repeated: true, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.SignalRequestPackage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: At.Srfg.Cits.Beta.Srem.SignalRequest
  field :minute, 2, type: :uint32
  field :second, 3, type: :uint32
  field :duration, 4, type: :uint32
  field :regional, 5, repeated: true, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.SignalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: At.Srfg.Cits.Beta.Srem.IntersectionReferenceID
  field :requestID, 2, type: :uint32
  field :requestType, 3, type: At.Srfg.Cits.Beta.Srem.RequestType, enum: true
  field :inBoundLane, 4, type: At.Srfg.Cits.Beta.Srem.IntersectionAccessPoint
  field :outBoundLane, 5, type: At.Srfg.Cits.Beta.Srem.IntersectionAccessPoint
  field :regional, 6, repeated: true, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Srem.IntersectionAccessPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :intersectionAccessPoint, 0

  field :approach, 1, type: :uint32, oneof: 0
  field :connection, 2, type: :uint32, oneof: 0
  field :lane, 3, type: :uint32, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Srem.Regional do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Srem.RequestorDescription do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :id, 0

  field :entityID, 1, type: :string, oneof: 0
  field :stationID, 2, type: :uint32, oneof: 0
  field :type, 3, type: At.Srfg.Cits.Beta.Srem.RequestorType
  field :position, 4, type: At.Srfg.Cits.Beta.Srem.RequestorPositionVector
  field :name, 5, type: :string
  field :routeName, 6, type: :string
  field :transitStatus, 7, type: :string
  field :transitOccupancy, 8, type: At.Srfg.Cits.Beta.Srem.TransitOccupancy, enum: true
  field :transitSchedule, 9, type: :int32
  field :regional, 10, repeated: true, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.Id do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entityID, 1, type: :string
  field :stationID, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Srem.RequestorType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :role, 1, type: At.Srfg.Cits.Beta.Srem.Role, enum: true
  field :subrole, 2, type: At.Srfg.Cits.Beta.Srem.Subrole, enum: true
  field :request, 3, type: At.Srfg.Cits.Beta.Srem.Request, enum: true
  field :iso3883, 4, type: :uint32
  field :hpmsType, 5, type: At.Srfg.Cits.Beta.Srem.HpmsType, enum: true
  field :regional, 6, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.RequestorPositionVector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :position, 1, type: At.Srfg.Cits.Beta.Srem.Position3D
  field :heading, 2, type: :uint32
  field :speed, 3, type: At.Srfg.Cits.Beta.Srem.TransmissionAndSpeed
end

defmodule At.Srfg.Cits.Beta.Srem.Position3D do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lat, 1, type: :int32
  field :long, 2, type: :int32
  field :elevation, 3, type: :int32
  field :regional, 4, repeated: true, type: At.Srfg.Cits.Beta.Srem.Regional
end

defmodule At.Srfg.Cits.Beta.Srem.TransmissionAndSpeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transmisson, 1, type: At.Srfg.Cits.Beta.Srem.Transmisson, enum: true
  field :speed, 2, type: :uint32
end