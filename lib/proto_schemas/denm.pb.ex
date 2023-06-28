defmodule At.Srfg.Cits.Beta.Denm.Termination do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :isCancellation, 0
  field :isNegation, 1
end

defmodule At.Srfg.Cits.Beta.Denm.AltitudeConfidence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :alt_000_01, 0
  field :alt_000_02, 1
  field :alt_000_05, 2
  field :alt_000_10, 3
  field :alt_000_20, 4
  field :alt_000_50, 5
  field :alt_001_00, 6
  field :alt_002_00, 7
  field :alt_005_00, 8
  field :alt_010_00, 9
  field :alt_020_00, 10
  field :alt_050_00, 11
  field :alt_100_00, 12
  field :alt_200_00, 13
  field :outOfRange, 14
  field :unavailable, 15
end

defmodule At.Srfg.Cits.Beta.Denm.RelevanceDistance do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lessThan50m, 0
  field :lessThan100m, 1
  field :lessThan200m, 2
  field :lessThan500m, 3
  field :lessThan1000m, 4
  field :lessThan5km, 5
  field :lessThan10km, 6
  field :over10km, 7
end

defmodule At.Srfg.Cits.Beta.Denm.RelevanceTrafficDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allTrafficDirections, 0
  field :upstreamTraffic, 1
  field :downstreamTraffic, 2
  field :oppositeTraffic, 3
end

defmodule At.Srfg.Cits.Beta.Denm.RoadType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :urban_NoStructuralSeparationToOppositeLanes, 0
  field :urban_WithStructuralSeparationToOppositeLanes, 1
  field :nonUrban_NoStructuralSeparationToOppositeLanes, 2
  field :nonUrban_WithStructuralSeparationToOppositeLanes, 3
end

defmodule At.Srfg.Cits.Beta.Denm.RequestResponseIndication do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 0
  field :response, 1
end

defmodule At.Srfg.Cits.Beta.Denm.InnerhardShoulderStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availableForStopping_inner, 0
  field :closed_inner, 1
  field :availableForDriving_inner, 2
end

defmodule At.Srfg.Cits.Beta.Denm.OuterhardShoulderStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availableForStopping_outer, 0
  field :closed_outer, 1
  field :availableForDriving_outer, 2
end

defmodule At.Srfg.Cits.Beta.Denm.TrafficFlowRule do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noPassing, 0
  field :noPassingForTrucks, 1
  field :passToRight, 2
  field :passToLeft, 3
end

defmodule At.Srfg.Cits.Beta.Denm.PositioningSolution do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noPositioningSolution, 0
  field :sGNSS, 1
  field :dGNSS, 2
  field :sGNSSplusDR, 3
  field :dGNSSplusDR, 4
  field :dR, 5
end

defmodule At.Srfg.Cits.Beta.Denm.StationarySince do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lessThan1Minute, 0
  field :lessThan2Minutes, 1
  field :lessThan15Minutes, 2
  field :equalOrGreater15Minutes, 3
end

defmodule At.Srfg.Cits.Beta.Denm.DangerousGoodsType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :explosives1, 0
  field :explosives2, 1
  field :explosives3, 2
  field :explosives4, 3
  field :explosives5, 4
  field :explosives6, 5
  field :flammableGases, 6
  field :nonFlammableGases, 7
  field :toxicGases, 8
  field :flammableLiquids, 9
  field :flammableSolids, 10
  field :substancesLiableToSpontaneousCombustion, 11
  field :substancesEmittingFlammableGasesUponContactWithWater, 12
  field :oxidizingSubstances, 13
  field :organicPeroxides, 14
  field :toxicSubstances, 15
  field :infectiousSubstances, 16
  field :radioactiveMaterial, 17
  field :corrosiveSubstances, 18
  field :miscellaneousDangerousSubstances, 19
end

defmodule At.Srfg.Cits.Beta.Denm.DENM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Denm.ItsPduHeader
  field :denm, 2, type: At.Srfg.Cits.Beta.Denm.DecentralizedEnvironmentalNotificationMessage
end

defmodule At.Srfg.Cits.Beta.Denm.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.DecentralizedEnvironmentalNotificationMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :management, 1, type: At.Srfg.Cits.Beta.Denm.ManagementContainer
  field :situation, 2, type: At.Srfg.Cits.Beta.Denm.SituationContainer
  field :location, 3, type: At.Srfg.Cits.Beta.Denm.LocationContainer
  field :alacarte, 4, type: At.Srfg.Cits.Beta.Denm.AlacarteContainer
end

defmodule At.Srfg.Cits.Beta.Denm.ManagementContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :actionID, 1, type: At.Srfg.Cits.Beta.Denm.ActionID
  field :detectionTime, 2, type: :uint64
  field :referenceTime, 3, type: :uint64
  field :termination, 4, type: At.Srfg.Cits.Beta.Denm.Termination, enum: true
  field :eventPosition, 5, type: At.Srfg.Cits.Beta.Denm.ReferencePosition
  field :relevanceDistance, 6, type: At.Srfg.Cits.Beta.Denm.RelevanceDistance, enum: true

  field :relevanceTrafficDirection, 7,
    type: At.Srfg.Cits.Beta.Denm.RelevanceTrafficDirection,
    enum: true

  field :validityDuration, 8, type: :uint32
  field :transmissionInterval, 9, type: :uint32
  field :stationType, 10, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.ActionID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :originatingStationID, 1, type: :uint32
  field :sequenceNumber, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.ReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
  field :positionConfidenceEllipse, 3, type: At.Srfg.Cits.Beta.Denm.PosConfidenceEllipse
  field :altitude, 4, type: At.Srfg.Cits.Beta.Denm.Altitude
end

defmodule At.Srfg.Cits.Beta.Denm.PosConfidenceEllipse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :semiMajorConfidence, 1, type: :uint32
  field :semiMinorConfidence, 2, type: :uint32
  field :semiMajorOrientation, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.Altitude do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :altitudeValue, 1, type: :int32
  field :altitudeConfidence, 2, type: At.Srfg.Cits.Beta.Denm.AltitudeConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Denm.SituationContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :informationQuality, 1, type: :uint32
  field :eventType, 2, type: At.Srfg.Cits.Beta.Denm.CauseCode
  field :linkedCause, 3, type: At.Srfg.Cits.Beta.Denm.CauseCode
  field :eventHistory, 4, repeated: true, type: At.Srfg.Cits.Beta.Denm.EventPoint
end

defmodule At.Srfg.Cits.Beta.Denm.CauseCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :causeCode, 1, type: :uint32
  field :subCauseCode, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.EventPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :eventPosition, 1, type: At.Srfg.Cits.Beta.Denm.DeltaReferencePosition
  field :eventDeltaTime, 2, type: :int32
  field :informationQuality, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.DeltaReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaLatitude, 1, type: :int32
  field :deltaLongitude, 2, type: :int32
  field :deltaAltitude, 3, type: :int32
end

defmodule At.Srfg.Cits.Beta.Denm.LocationContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :eventSpeed, 1, type: At.Srfg.Cits.Beta.Denm.Speed
  field :eventPositionHeading, 2, type: At.Srfg.Cits.Beta.Denm.Heading
  field :traces, 3, repeated: true, type: At.Srfg.Cits.Beta.Denm.PathHistory
  field :roadType, 4, type: At.Srfg.Cits.Beta.Denm.RoadType, enum: true
end

defmodule At.Srfg.Cits.Beta.Denm.PathHistory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pathPoint, 1, repeated: true, type: At.Srfg.Cits.Beta.Denm.PathPoint
end

defmodule At.Srfg.Cits.Beta.Denm.Speed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedValue, 1, type: :uint32
  field :speedConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.Heading do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :headingValue, 1, type: :uint32
  field :headingConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Denm.PathPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pathPosition, 1, type: At.Srfg.Cits.Beta.Denm.DeltaReferencePosition
  field :pathDeltaTime, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Denm.AlacarteContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lanePosition, 1, type: :int32
  field :impactReduction, 2, type: At.Srfg.Cits.Beta.Denm.ImpactReductionContainer
  field :externalTemperature, 3, type: :int32
  field :roadWorks, 4, type: At.Srfg.Cits.Beta.Denm.RoadWorksContainerExtended
  field :positioningSolution, 5, type: At.Srfg.Cits.Beta.Denm.PositioningSolution, enum: true
  field :stationaryVehicle, 6, type: At.Srfg.Cits.Beta.Denm.StationaryVehicleContainer
end

defmodule At.Srfg.Cits.Beta.Denm.ImpactReductionContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :heightLonCarrLeft, 1, type: :uint32
  field :heightLonCarrRight, 2, type: :uint32
  field :posLonCarrLeft, 3, type: :uint32
  field :posLonCarrRight, 4, type: :uint32
  field :positionOfPillars, 5, repeated: true, type: :uint32
  field :posCentMass, 6, type: :uint32
  field :wheelBaseVehicle, 7, type: :uint32
  field :turningRadius, 8, type: :uint32
  field :posFrontAx, 9, type: :uint32
  field :positionOfOccupants, 10, type: :string
  field :vehicleMass, 11, type: :uint32

  field :requestResponseIndication, 12,
    type: At.Srfg.Cits.Beta.Denm.RequestResponseIndication,
    enum: true
end

defmodule At.Srfg.Cits.Beta.Denm.RoadWorksContainerExtended do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lightBarSirenInUse, 1, type: :string
  field :closedLanes, 2, type: At.Srfg.Cits.Beta.Denm.ClosedLanes
  field :restriction, 3, repeated: true, type: :uint32
  field :speedLimit, 4, type: :uint32
  field :incidentIndication, 5, type: At.Srfg.Cits.Beta.Denm.CauseCode
  field :recommendedPath, 6, repeated: true, type: At.Srfg.Cits.Beta.Denm.ReferencePosition
  field :startingPointSpeedLimit, 7, type: At.Srfg.Cits.Beta.Denm.DeltaReferencePosition
  field :trafficFlowRule, 8, type: At.Srfg.Cits.Beta.Denm.TrafficFlowRule, enum: true
  field :referenceDenms, 9, repeated: true, type: At.Srfg.Cits.Beta.Denm.ActionID
end

defmodule At.Srfg.Cits.Beta.Denm.ClosedLanes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :innerhardShoulderStatus, 1,
    type: At.Srfg.Cits.Beta.Denm.InnerhardShoulderStatus,
    enum: true

  field :outerhardShoulderStatus, 2,
    type: At.Srfg.Cits.Beta.Denm.OuterhardShoulderStatus,
    enum: true

  field :drivingLaneStatus, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Denm.StationaryVehicleContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stationarySince, 1, type: At.Srfg.Cits.Beta.Denm.StationarySince, enum: true
  field :stationaryCause, 2, type: At.Srfg.Cits.Beta.Denm.CauseCode
  field :carryingDangerousGoods, 3, type: At.Srfg.Cits.Beta.Denm.DangerousGoodsExtended
  field :numberOfOccupants, 4, type: :uint32
  field :vehicleIdentification, 5, type: At.Srfg.Cits.Beta.Denm.VehicleIdentification
  field :energyStorageType, 6, type: :string
end

defmodule At.Srfg.Cits.Beta.Denm.DangerousGoodsExtended do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dangerousGoodsType, 1, type: At.Srfg.Cits.Beta.Denm.DangerousGoodsType, enum: true
  field :unNumber, 2, type: :uint32
  field :elevatedTemperature, 3, type: :bool
  field :tunnelsRestricted, 4, type: :bool
  field :limitedQuantity, 5, type: :bool
  field :emergencyActionCode, 6, type: :string
  field :phoneNumber, 7, type: :string
  field :companyName, 8, type: :string
end

defmodule At.Srfg.Cits.Beta.Denm.VehicleIdentification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :wMInumber, 1, type: :string
  field :vDS, 2, type: :string
end