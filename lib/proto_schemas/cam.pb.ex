defmodule At.Srfg.Cits.Beta.Cam.AltitudeConfidence do
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

defmodule At.Srfg.Cits.Beta.Cam.DriveDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forward, 0
  field :backward, 1
  field :unavailable_drive_direction, 2
end

defmodule At.Srfg.Cits.Beta.Cam.VehicleLengthConfidenceIndication do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noTrailerPresent, 0
  field :trailerPresentWithKnownLength, 1
  field :trailerPresentWithUnknownLength, 2
  field :trailerPresenceIsUnknown, 3
  field :unavailable_vehicle_length_confidence_indication, 4
end

defmodule At.Srfg.Cits.Beta.Cam.CurvatureConfidence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :onePerMeter_0_00002, 0
  field :onePerMeter_0_0001, 1
  field :onePerMeter_0_0005, 2
  field :onePerMeter_0_002, 3
  field :onePerMeter_0_01, 4
  field :onePerMeter_0_1, 5
  field :outOfRange_curvature_confidence, 6
  field :unavailable_curvature_confidence, 7
end

defmodule At.Srfg.Cits.Beta.Cam.CurvatureCalculationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :yawRateUsed, 0
  field :yawRateNotUsed, 1
  field :unavailable_curvature_calculation_mode, 2
end

defmodule At.Srfg.Cits.Beta.Cam.YawRateConfidence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :degSec_000_01, 0
  field :degSec_000_05, 1
  field :degSec_000_10, 2
  field :degSec_001_00, 3
  field :degSec_005_00, 4
  field :degSec_010_00, 5
  field :degSec_100_00, 6
  field :outOfRange_yaw_rate_confidence, 7
  field :unavailable_yaw_rate_confidence, 8
end

defmodule At.Srfg.Cits.Beta.Cam.ProtectedZoneType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :permanentCenDsrcTolling, 0
  field :temporaryCenDsrcTolling, 1
end

defmodule At.Srfg.Cits.Beta.Cam.VehicleRole do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default_vehicle_role, 0
  field :publicTransport, 1
  field :specialTransport, 2
  field :dangerousGoods, 3
  field :roadWork, 4
  field :rescue, 5
  field :emergency, 6
  field :safetyCar, 7
  field :agriculture, 8
  field :commercial, 9
  field :military, 10
  field :roadOperator, 11
  field :taxi, 12
  field :reserved1, 13
  field :reserved2, 14
  field :reserved3, 15
end

defmodule At.Srfg.Cits.Beta.Cam.DangerousGoodsBasic do
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

defmodule At.Srfg.Cits.Beta.Cam.InnerhardShoulderStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availableForStopping_inner, 0
  field :closed_inner, 1
  field :availableForDriving_inner, 2
end

defmodule At.Srfg.Cits.Beta.Cam.OuterhardShoulderStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :availableForStopping_outer, 0
  field :closed_outer, 1
  field :availableForDriving_outer, 2
end

defmodule At.Srfg.Cits.Beta.Cam.TrafficRule do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noPassing, 0
  field :noPassingForTrucks, 1
  field :passToRight, 2
  field :passToLeft, 3
end

defmodule At.Srfg.Cits.Beta.Cam.CAM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Cam.ItsPduHeader
  field :cam, 2, type: At.Srfg.Cits.Beta.Cam.CoopAwareness
end

defmodule At.Srfg.Cits.Beta.Cam.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.CoopAwareness do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generationDeltaTime, 1, type: :uint32
  field :camParameters, 2, type: At.Srfg.Cits.Beta.Cam.CamParameters
end

defmodule At.Srfg.Cits.Beta.Cam.CamParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :highFrequencyContainer, 0

  oneof :lowFrequencyContainer, 1

  oneof :specialVehicleContainer, 2

  field :basicContainer, 1, type: At.Srfg.Cits.Beta.Cam.BasicContainer

  field :basicVehicleContainerHighFrequency, 2,
    type: At.Srfg.Cits.Beta.Cam.BasicVehicleContainerHighFrequency,
    oneof: 0

  field :rsuContainerHighFrequency, 3,
    type: At.Srfg.Cits.Beta.Cam.RSUContainerHighFrequency,
    oneof: 0

  field :basicVehicleContainerLowFrequency, 4,
    type: At.Srfg.Cits.Beta.Cam.BasicVehicleContainerLowFrequency,
    oneof: 1

  field :dangerousGoodsContainer, 5, type: At.Srfg.Cits.Beta.Cam.DangerousGoodsContainer, oneof: 2
  field :emergencyContainer, 6, type: At.Srfg.Cits.Beta.Cam.EmergencyContainer, oneof: 2

  field :publicTransportContainer, 7,
    type: At.Srfg.Cits.Beta.Cam.PublicTransportContainer,
    oneof: 2

  field :rescueContainer, 8, type: At.Srfg.Cits.Beta.Cam.RescueContainer, oneof: 2
  field :roadWorksContainerBasic, 9, type: At.Srfg.Cits.Beta.Cam.RoadWorksContainerBasic, oneof: 2
  field :safetyCarContainer, 10, type: At.Srfg.Cits.Beta.Cam.SafetyCarContainer, oneof: 2

  field :specialTransportContainer, 11,
    type: At.Srfg.Cits.Beta.Cam.SpecialTransportContainer,
    oneof: 2
end

defmodule At.Srfg.Cits.Beta.Cam.BasicContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stationType, 1, type: :uint32
  field :referencePosition, 2, type: At.Srfg.Cits.Beta.Cam.ReferencePosition
end

defmodule At.Srfg.Cits.Beta.Cam.ReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
  field :positionConfidenceEllipse, 3, type: At.Srfg.Cits.Beta.Cam.PosConfidenceEllipse
  field :altitude, 4, type: At.Srfg.Cits.Beta.Cam.Altitude
end

defmodule At.Srfg.Cits.Beta.Cam.PosConfidenceEllipse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :semiMajorConfidence, 1, type: :uint32
  field :semiMinorConfidence, 2, type: :uint32
  field :semiMajorOrientation, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.Altitude do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :altitudeValue, 1, type: :int32
  field :altitudeConfidence, 2, type: At.Srfg.Cits.Beta.Cam.AltitudeConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Cam.HighFrequencyContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :basicVehicleContainerHighFrequency, 1,
    type: At.Srfg.Cits.Beta.Cam.BasicVehicleContainerHighFrequency

  field :rsuContainerHighFrequency, 2, type: At.Srfg.Cits.Beta.Cam.RSUContainerHighFrequency
end

defmodule At.Srfg.Cits.Beta.Cam.BasicVehicleContainerHighFrequency do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :heading, 1, type: At.Srfg.Cits.Beta.Cam.Heading
  field :speed, 2, type: At.Srfg.Cits.Beta.Cam.Speed
  field :driveDirection, 3, type: At.Srfg.Cits.Beta.Cam.DriveDirection, enum: true
  field :vehicleLength, 4, type: At.Srfg.Cits.Beta.Cam.VehicleLength
  field :vehicleWidth, 5, type: :uint32
  field :longitudinalAcceleration, 6, type: At.Srfg.Cits.Beta.Cam.LongitudinalAcceleration
  field :curvature, 7, type: At.Srfg.Cits.Beta.Cam.Curvature

  field :curvatureCalculationMode, 8,
    type: At.Srfg.Cits.Beta.Cam.CurvatureCalculationMode,
    enum: true

  field :yawRate, 9, type: At.Srfg.Cits.Beta.Cam.YawRate
  field :accelerationControl, 10, type: :string
  field :lanePosition, 11, type: :int32
  field :steeringWheelAngle, 12, type: At.Srfg.Cits.Beta.Cam.SteeringWheelAngle
  field :lateralAcceleration, 13, type: At.Srfg.Cits.Beta.Cam.LateralAcceleration
  field :verticalAcceleration, 14, type: At.Srfg.Cits.Beta.Cam.VerticalAcceleration
  field :performanceClass, 15, type: :uint32
  field :cenDsrcTollingZone, 16, type: At.Srfg.Cits.Beta.Cam.CenDsrcTollingZone
end

defmodule At.Srfg.Cits.Beta.Cam.Heading do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :headingValue, 1, type: :uint32
  field :headingConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.Speed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedValue, 1, type: :uint32
  field :speedConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.VehicleLength do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleLengthValue, 1, type: :uint32

  field :vehicleLengthConfidenceIndication, 2,
    type: At.Srfg.Cits.Beta.Cam.VehicleLengthConfidenceIndication,
    enum: true
end

defmodule At.Srfg.Cits.Beta.Cam.LongitudinalAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :longitudinalAccelerationValue, 1, type: :int32
  field :longitudinalAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.Curvature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :curvatureValue, 1, type: :int32
  field :curvatureConfidence, 2, type: At.Srfg.Cits.Beta.Cam.CurvatureConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Cam.YawRate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :yawRateValue, 1, type: :int32
  field :yawRateConfidence, 2, type: At.Srfg.Cits.Beta.Cam.YawRateConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Cam.SteeringWheelAngle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :steeringWheelAngleValue, 1, type: :int32
  field :steeringWheelAngleConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.LateralAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lateralAccelerationValue, 1, type: :int32
  field :lateralAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.VerticalAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :verticalAccelerationValue, 1, type: :int32
  field :verticalAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.CenDsrcTollingZone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protectedZoneLatitude, 1, type: :int32
  field :protectedZoneLongitude, 2, type: :int32
  field :cenDsrcTollingZoneID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.RSUContainerHighFrequency do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protectedCommunicationZonesRSU, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cam.ProtectedCommunicationZone
end

defmodule At.Srfg.Cits.Beta.Cam.ProtectedCommunicationZone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protectedZoneType, 1, type: At.Srfg.Cits.Beta.Cam.ProtectedZoneType, enum: true
  field :expiryTime, 2, type: :uint64
  field :protectedZoneLatitude, 3, type: :int32
  field :protectedZoneLongitude, 4, type: :int32
  field :protectedZoneRadius, 5, type: :int32
  field :protectedZoneID, 6, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.LowFrequencyContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :basicVehicleContainerLowFrequency, 1,
    type: At.Srfg.Cits.Beta.Cam.BasicVehicleContainerLowFrequency
end

defmodule At.Srfg.Cits.Beta.Cam.BasicVehicleContainerLowFrequency do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleRole, 1, type: At.Srfg.Cits.Beta.Cam.VehicleRole, enum: true
  field :exteriorLights, 2, type: :string
  field :pathHistory, 3, repeated: true, type: At.Srfg.Cits.Beta.Cam.PathPoint
end

defmodule At.Srfg.Cits.Beta.Cam.PathPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pathPosition, 1, type: At.Srfg.Cits.Beta.Cam.DeltaReferencePosition
  field :pathDeltaTime, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cam.DeltaReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaLatitude, 1, type: :int32
  field :deltaLongitude, 2, type: :int32
  field :deltaAltitude, 3, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cam.SpecialVehicleContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dangerousGoodsContainer, 1, type: At.Srfg.Cits.Beta.Cam.DangerousGoodsContainer
  field :emergencyContainer, 2, type: At.Srfg.Cits.Beta.Cam.EmergencyContainer
  field :publicTransportContainer, 3, type: At.Srfg.Cits.Beta.Cam.PublicTransportContainer
  field :rescueContainer, 4, type: At.Srfg.Cits.Beta.Cam.RescueContainer
  field :roadWorksContainerBasic, 5, type: At.Srfg.Cits.Beta.Cam.RoadWorksContainerBasic
  field :safetyCarContainer, 6, type: At.Srfg.Cits.Beta.Cam.SafetyCarContainer
  field :specialTransportContainer, 7, type: At.Srfg.Cits.Beta.Cam.SpecialTransportContainer
end

defmodule At.Srfg.Cits.Beta.Cam.DangerousGoodsContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dangerousGoodsBasic, 1, type: At.Srfg.Cits.Beta.Cam.DangerousGoodsBasic, enum: true
end

defmodule At.Srfg.Cits.Beta.Cam.EmergencyContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lightBarSirenInUse, 1, type: :string
  field :incidentIndication, 2, type: At.Srfg.Cits.Beta.Cam.CauseCode
  field :emergencyPriority, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Cam.CauseCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :causeCode, 1, type: :uint32
  field :subCauseCode, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.PublicTransportContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :embarkationStatus, 1, type: :bool
  field :ptActivation, 2, type: At.Srfg.Cits.Beta.Cam.PtActivation
end

defmodule At.Srfg.Cits.Beta.Cam.PtActivation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ptActivationType, 1, type: :uint32
  field :ptActivationData, 2, type: :string
end

defmodule At.Srfg.Cits.Beta.Cam.RescueContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lightBarSirenInUse, 1, type: :string
end

defmodule At.Srfg.Cits.Beta.Cam.RoadWorksContainerBasic do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :roadworksSubCauseCode, 1, type: :uint32
  field :lightBarSirenInUse, 2, type: :string
  field :closedLanes, 3, type: At.Srfg.Cits.Beta.Cam.ClosedLanes
end

defmodule At.Srfg.Cits.Beta.Cam.ClosedLanes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :innerhardShoulderStatus, 1,
    type: At.Srfg.Cits.Beta.Cam.InnerhardShoulderStatus,
    enum: true

  field :outerhardShoulderStatus, 2,
    type: At.Srfg.Cits.Beta.Cam.OuterhardShoulderStatus,
    enum: true

  field :drivingLaneStatus, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Cam.SafetyCarContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lightBarSirenInUse, 1, type: :string
  field :incidentIndication, 2, type: At.Srfg.Cits.Beta.Cam.CauseCode
  field :trafficRule, 3, type: At.Srfg.Cits.Beta.Cam.TrafficRule, enum: true
  field :speedLimit, 4, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cam.SpecialTransportContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :specialTransportType, 1, type: :string
  field :lightBarSirenInUse, 2, type: :string
end