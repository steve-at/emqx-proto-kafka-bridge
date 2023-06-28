defmodule At.Srfg.Cits.Beta.Cpm.AltitudeConfidence do
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

defmodule At.Srfg.Cits.Beta.Cpm.DriveDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :forward, 0
  field :backward, 1
  field :unavailable_DriveDirection, 2
end

defmodule At.Srfg.Cits.Beta.Cpm.YawRateConfidence do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :degSec_000_01, 0
  field :degSec_000_05, 1
  field :degSec_000_10, 2
  field :degSec_001_00, 3
  field :degSec_005_00, 4
  field :degSec_010_00, 5
  field :degSec_100_00, 6
  field :outOfRange_YawRateConfidence, 7
  field :unavailable_YawRateConfidence, 8
end

defmodule At.Srfg.Cits.Beta.Cpm.VehicleLengthConfidenceIndication do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noTrailerPresent, 0
  field :trailerPresentWithKnownLength, 1
  field :trailerPresentWithUnknownLength, 2
  field :trailerPresenceIsUnknown, 3
  field :unavailable_VehicleLengthConfidenceIndication, 4
end

defmodule At.Srfg.Cits.Beta.Cpm.CPM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Cpm.ItsPduHeader
  field :cpm, 2, type: At.Srfg.Cits.Beta.Cpm.CollectivePerceptionMessage
end

defmodule At.Srfg.Cits.Beta.Cpm.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.CollectivePerceptionMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :generationDeltaTime, 1, type: :uint32
  field :cpmParameters, 2, type: At.Srfg.Cits.Beta.Cpm.CpmParameters
end

defmodule At.Srfg.Cits.Beta.Cpm.CpmParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :managementContainer, 1, type: At.Srfg.Cits.Beta.Cpm.CpmManagementContainer
  field :stationDataContainer, 2, type: At.Srfg.Cits.Beta.Cpm.StationDataContainer
  field :perceptionData, 3, repeated: true, type: At.Srfg.Cits.Beta.Cpm.PerceptionData
end

defmodule At.Srfg.Cits.Beta.Cpm.CpmManagementContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stationType, 1, type: :uint32
  field :messageSegmentInfo, 2, type: At.Srfg.Cits.Beta.Cpm.MessageSegmentInfo
  field :referencePosition, 3, type: At.Srfg.Cits.Beta.Cpm.ReferencePosition
end

defmodule At.Srfg.Cits.Beta.Cpm.MessageSegmentInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :totalMsgSegments, 1, type: :uint32
  field :thisSegmentNum, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.ReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
  field :positionConfidenceEllipse, 3, type: At.Srfg.Cits.Beta.Cpm.PosConfidenceEllipse
  field :altitude, 4, type: At.Srfg.Cits.Beta.Cpm.Altitude
end

defmodule At.Srfg.Cits.Beta.Cpm.PosConfidenceEllipse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :semiMajorConfidence, 1, type: :uint32
  field :semiMinorConfidence, 2, type: :uint32
  field :semiMajorOrientation, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.Altitude do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :altitudeValue, 1, type: :int32
  field :altitudeConfidence, 2, type: At.Srfg.Cits.Beta.Cpm.AltitudeConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Cpm.StationDataContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :containerData, 0

  field :containerId, 1, type: :uint32

  field :originatingStationVehicleContainer, 2,
    type: At.Srfg.Cits.Beta.Cpm.OriginatingVehicleContainer,
    oneof: 0

  field :originatingStationRSUContainer, 3,
    type: At.Srfg.Cits.Beta.Cpm.OriginatingStationRSUContainerWrapper,
    oneof: 0
end

defmodule At.Srfg.Cits.Beta.Cpm.OriginatingStationRSUContainerWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :originatingStationRSUContainer, 0

  field :intersectionReferenceId, 2, type: At.Srfg.Cits.Beta.Cpm.IntersectionReferenceID, oneof: 0
  field :roadSegmentReferenceId, 3, type: At.Srfg.Cits.Beta.Cpm.RoadSegmentReferenceID, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Cpm.PerceptionData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :containerData, 0

  field :containerId, 1, type: :uint32

  field :sensorInformationCpmContainer, 2,
    type: At.Srfg.Cits.Beta.Cpm.SensorInformationWrapper,
    oneof: 0

  field :perceivedObjectCpmContainer, 3,
    type: At.Srfg.Cits.Beta.Cpm.PerceivedObjectContainer,
    oneof: 0

  field :freeSpaceAddendumCpmContainer, 4,
    type: At.Srfg.Cits.Beta.Cpm.FreeSpaceAddendumWrapper,
    oneof: 0
end

defmodule At.Srfg.Cits.Beta.Cpm.SensorInformationWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sensorInformationCpmContainer, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cpm.SensorInformation
end

defmodule At.Srfg.Cits.Beta.Cpm.FreeSpaceAddendumWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :freeSpaceAddendumCpmContainer, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cpm.FreeSpaceAddendum
end

defmodule At.Srfg.Cits.Beta.Cpm.OriginatingVehicleContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :heading, 1, type: At.Srfg.Cits.Beta.Cpm.Heading
  field :speed, 2, type: At.Srfg.Cits.Beta.Cpm.Speed
  field :vehicleOrientationAngle, 3, type: At.Srfg.Cits.Beta.Cpm.WGS84Angle
  field :driveDirection, 4, type: At.Srfg.Cits.Beta.Cpm.DriveDirection, enum: true
  field :longitudinalAcceleration, 5, type: At.Srfg.Cits.Beta.Cpm.LongitudinalAcceleration
  field :lateralAcceleration, 6, type: At.Srfg.Cits.Beta.Cpm.LateralAcceleration
  field :verticalAcceleration, 7, type: At.Srfg.Cits.Beta.Cpm.VerticalAcceleration
  field :yawRate, 8, type: At.Srfg.Cits.Beta.Cpm.YawRate
  field :pitchAngle, 9, type: At.Srfg.Cits.Beta.Cpm.CartesianAngle
  field :rollAngle, 10, type: At.Srfg.Cits.Beta.Cpm.CartesianAngle
  field :vehicleLength, 11, type: At.Srfg.Cits.Beta.Cpm.VehicleLength
  field :vehicleWidth, 12, type: :uint32
  field :vehicleHeight, 13, type: :uint32
  field :trailerDataContainer, 14, repeated: true, type: At.Srfg.Cits.Beta.Cpm.TrailerData
end

defmodule At.Srfg.Cits.Beta.Cpm.Heading do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :headingValue, 1, type: :uint32
  field :headingConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.Speed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedValue, 1, type: :uint32
  field :speedConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.WGS84Angle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.LongitudinalAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :longitudinalAccelerationValue, 1, type: :int32
  field :longitudinalAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.LateralAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lateralAccelerationValue, 1, type: :int32
  field :lateralAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.VerticalAcceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :verticalAccelerationValue, 1, type: :int32
  field :verticalAccelerationConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.YawRate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :yawRateValue, 1, type: :int32
  field :yawRateConfidence, 2, type: At.Srfg.Cits.Beta.Cpm.YawRateConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Cpm.CartesianAngle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.VehicleLength do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleLengthValue, 1, type: :uint32

  field :vehicleLengthConfidenceIndication, 2,
    type: At.Srfg.Cits.Beta.Cpm.VehicleLengthConfidenceIndication,
    enum: true
end

defmodule At.Srfg.Cits.Beta.Cpm.TrailerData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :refPointId, 1, type: :uint32
  field :hitchPointOffset, 2, type: :uint32
  field :frontOverhang, 3, type: :uint32
  field :rearOverhang, 4, type: :uint32
  field :trailerWidth, 5, type: :uint32
  field :hitchAngle, 6, type: At.Srfg.Cits.Beta.Cpm.CartesianAngle
end

defmodule At.Srfg.Cits.Beta.Cpm.OriginatingStationRSUContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intersectionReferenceId, 1, type: At.Srfg.Cits.Beta.Cpm.IntersectionReferenceID
  field :roadSegmentReferenceId, 2, type: At.Srfg.Cits.Beta.Cpm.RoadSegmentReferenceID
end

defmodule At.Srfg.Cits.Beta.Cpm.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.RoadSegmentReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.SensorInformation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :detectionArea, 0

  field :sensorID, 1, type: :uint32
  field :type, 2, type: :uint32
  field :stationarySensorCircular, 3, type: At.Srfg.Cits.Beta.Cpm.AreaCircular, oneof: 0
  field :stationarySensorEllipse, 4, type: At.Srfg.Cits.Beta.Cpm.AreaEllipse, oneof: 0
  field :stationarySensorPolygon, 5, type: At.Srfg.Cits.Beta.Cpm.AreaPolygon, oneof: 0
  field :stationarySensorRadial, 6, type: At.Srfg.Cits.Beta.Cpm.AreaRadial, oneof: 0
  field :stationarySensorRectangle, 7, type: At.Srfg.Cits.Beta.Cpm.AreaRectangle, oneof: 0
  field :vehicleSensor, 8, type: At.Srfg.Cits.Beta.Cpm.VehicleSensor, oneof: 0
  field :freeSpaceConfidence, 9, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.DetectionArea do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :stationarySensorCircular, 1, type: At.Srfg.Cits.Beta.Cpm.AreaCircular
  field :stationarySensorEllipse, 2, type: At.Srfg.Cits.Beta.Cpm.AreaEllipse
  field :stationarySensorPolygon, 3, type: At.Srfg.Cits.Beta.Cpm.AreaPolygon
  field :stationarySensorRadial, 4, type: At.Srfg.Cits.Beta.Cpm.AreaRadial
  field :stationarySensorRectangle, 5, type: At.Srfg.Cits.Beta.Cpm.AreaRectangle
  field :vehicleSensor, 6, type: At.Srfg.Cits.Beta.Cpm.VehicleSensor
end

defmodule At.Srfg.Cits.Beta.Cpm.AreaCircular do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nodeCenterPoint, 1, type: At.Srfg.Cits.Beta.Cpm.OffsetPoint
  field :radius, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.OffsetPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :nodeOffsetPointxy, 0

  oneof :nodeOffsetPointZ, 1

  field :node_LatLon, 1,
    type: At.Srfg.Cits.Beta.Cpm.Node_LLmD64b,
    json_name: "nodeLatLon",
    oneof: 0

  field :node_XY1, 2, type: At.Srfg.Cits.Beta.Cpm.Node_XY20b, json_name: "nodeXY1", oneof: 0
  field :node_XY2, 3, type: At.Srfg.Cits.Beta.Cpm.Node_XY22b, json_name: "nodeXY2", oneof: 0
  field :node_XY3, 4, type: At.Srfg.Cits.Beta.Cpm.Node_XY24b, json_name: "nodeXY3", oneof: 0
  field :node_XY4, 5, type: At.Srfg.Cits.Beta.Cpm.Node_XY26b, json_name: "nodeXY4", oneof: 0
  field :node_XY5, 6, type: At.Srfg.Cits.Beta.Cpm.Node_XY28b, json_name: "nodeXY5", oneof: 0
  field :node_XY6, 7, type: At.Srfg.Cits.Beta.Cpm.Node_XY32b, json_name: "nodeXY6", oneof: 0
  field :regional, 8, type: At.Srfg.Cits.Beta.Cpm.Regional, oneof: 0
  field :node_Z1, 9, type: :int32, json_name: "nodeZ1", oneof: 1
  field :node_Z2, 10, type: :int32, json_name: "nodeZ2", oneof: 1
  field :node_Z3, 11, type: :int32, json_name: "nodeZ3", oneof: 1
  field :node_Z4, 12, type: :int32, json_name: "nodeZ4", oneof: 1
  field :node_Z5, 13, type: :int32, json_name: "nodeZ5", oneof: 1
  field :node_Z6, 14, type: :int32, json_name: "nodeZ6", oneof: 1
end

defmodule At.Srfg.Cits.Beta.Cpm.NodeOffsetPointxy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_LatLon, 1, type: At.Srfg.Cits.Beta.Cpm.Node_LLmD64b, json_name: "nodeLatLon"
  field :node_XY1, 2, type: At.Srfg.Cits.Beta.Cpm.Node_XY20b, json_name: "nodeXY1"
  field :node_XY2, 3, type: At.Srfg.Cits.Beta.Cpm.Node_XY22b, json_name: "nodeXY2"
  field :node_XY3, 4, type: At.Srfg.Cits.Beta.Cpm.Node_XY24b, json_name: "nodeXY3"
  field :node_XY4, 5, type: At.Srfg.Cits.Beta.Cpm.Node_XY26b, json_name: "nodeXY4"
  field :node_XY5, 6, type: At.Srfg.Cits.Beta.Cpm.Node_XY28b, json_name: "nodeXY5"
  field :node_XY6, 7, type: At.Srfg.Cits.Beta.Cpm.Node_XY32b, json_name: "nodeXY6"
  field :regional, 8, type: At.Srfg.Cits.Beta.Cpm.Regional
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_LLmD64b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lon, 1, type: :int32
  field :lat, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY20b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY22b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY24b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY26b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY28b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Node_XY32b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.Regional do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Cpm.NodeOffsetPointZ do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_Z1, 1, type: :int32, json_name: "nodeZ1"
  field :node_Z2, 2, type: :int32, json_name: "nodeZ2"
  field :node_Z3, 3, type: :int32, json_name: "nodeZ3"
  field :node_Z4, 4, type: :int32, json_name: "nodeZ4"
  field :node_Z5, 5, type: :int32, json_name: "nodeZ5"
  field :node_Z6, 6, type: :int32, json_name: "nodeZ6"
end

defmodule At.Srfg.Cits.Beta.Cpm.AreaEllipse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nodeCenterPoint, 1, type: At.Srfg.Cits.Beta.Cpm.OffsetPoint
  field :semiMinorRangeLength, 2, type: :uint32
  field :semiMajorRangeLength, 3, type: :uint32
  field :semiMajorRangeOrientation, 4, type: :uint32
  field :semiHeight, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.AreaPolygon do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :polyPointList, 1, repeated: true, type: At.Srfg.Cits.Beta.Cpm.OffsetPoint
end

defmodule At.Srfg.Cits.Beta.Cpm.AreaRadial do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :range, 1, type: :uint32
  field :stationaryHorizontalOpeningAngleStart, 2, type: :uint32
  field :stationaryHorizontalOpeningAngleEnd, 3, type: :uint32
  field :verticalOpeningAngleStart, 4, type: :uint32
  field :verticalOpeningAngleEnd, 5, type: :uint32
  field :sensorPositionOffset, 6, type: At.Srfg.Cits.Beta.Cpm.OffsetPoint
  field :sensorHeight, 7, type: :int32
end

defmodule At.Srfg.Cits.Beta.Cpm.AreaRectangle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nodeCenterPoint, 1, type: At.Srfg.Cits.Beta.Cpm.OffsetPoint
  field :semiMajorRangeLength, 2, type: :uint32
  field :semiMinorRangeLength, 3, type: :uint32
  field :semiMajorRangeOrientation, 4, type: :uint32
  field :semiHeight, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.VehicleSensor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :refPointId, 1, type: :uint32
  field :xSensorOffset, 2, type: :int32
  field :ySensorOffset, 3, type: :int32
  field :zSensorOffset, 4, type: :uint32

  field :vehicleSensorPropertyList, 5,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cpm.VehicleSensorProperties
end

defmodule At.Srfg.Cits.Beta.Cpm.VehicleSensorProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :range, 1, type: :uint32
  field :horizontalOpeningAngleStart, 2, type: :uint32
  field :horizontalOpeningAngleEnd, 3, type: :uint32
  field :verticalOpeningAngleStart, 4, type: :uint32
  field :verticalOpeningAngleEnd, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.PerceivedObjectContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :numberOfPerceivedObjects, 1, type: :uint32
  field :perceivedObjects, 2, repeated: true, type: At.Srfg.Cits.Beta.Cpm.PerceivedObject
end

defmodule At.Srfg.Cits.Beta.Cpm.PerceivedObject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :objectID, 1, type: :uint32
  field :timeOfMeasurement, 2, type: :int32
  field :objectConfidence, 3, type: :uint32
  field :xDistance, 4, type: At.Srfg.Cits.Beta.Cpm.ObjectDistance
  field :yDistance, 5, type: At.Srfg.Cits.Beta.Cpm.ObjectDistance
  field :zDistance, 6, type: At.Srfg.Cits.Beta.Cpm.ObjectDistance
  field :xSpeed, 7, type: At.Srfg.Cits.Beta.Cpm.SpeedExtended
  field :ySpeed, 8, type: At.Srfg.Cits.Beta.Cpm.SpeedExtended
  field :zSpeed, 9, type: At.Srfg.Cits.Beta.Cpm.SpeedExtended
  field :xAcceleration, 10, type: At.Srfg.Cits.Beta.Cpm.Acceleration
  field :yAcceleration, 11, type: At.Srfg.Cits.Beta.Cpm.Acceleration
  field :zAcceleration, 12, type: At.Srfg.Cits.Beta.Cpm.Acceleration
  field :yawAngle, 13, type: At.Srfg.Cits.Beta.Cpm.CartesianAngle
  field :planarObjectDimension1, 14, type: At.Srfg.Cits.Beta.Cpm.ObjectDimension
  field :planarObjectDimension2, 15, type: At.Srfg.Cits.Beta.Cpm.ObjectDimension
  field :verticalObjectDimension, 16, type: At.Srfg.Cits.Beta.Cpm.ObjectDimension
  field :objectRefPoint, 17, type: :uint32
  field :objectAge, 18, type: :uint32
  field :sensorIDList, 19, repeated: true, type: :uint32
  field :dynamicStatus, 20, type: :uint32
  field :classification, 21, repeated: true, type: At.Srfg.Cits.Beta.Cpm.ObjectClassWithConfidence
  field :matchedPosition, 22, type: At.Srfg.Cits.Beta.Cpm.MatchedPosition
end

defmodule At.Srfg.Cits.Beta.Cpm.ObjectDistance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :int32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.SpeedExtended do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :int32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.Acceleration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :int32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.ObjectDimension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :confidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.ObjectClassWithConfidence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :objectClass, 0

  field :animalSubclass, 1, type: :uint32, oneof: 0
  field :otherSubclass, 2, type: :uint32, oneof: 0
  field :personSubclass, 3, type: :uint32, oneof: 0
  field :vehicleSubclass, 4, type: :uint32, oneof: 0
  field :confidence, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.ObjectClass do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :animalSubclass, 1, type: :uint32
  field :otherSubclass, 2, type: :uint32
  field :personSubclass, 3, type: :uint32
  field :vehicleSubclass, 4, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.MatchedPosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :laneID, 1, type: :uint32
  field :longitudinalLanePosition, 2, type: At.Srfg.Cits.Beta.Cpm.LongitudinalLanePosition
end

defmodule At.Srfg.Cits.Beta.Cpm.LongitudinalLanePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :longitudinalLanePositionValue, 1, type: :uint32
  field :longitudinalLanePositionConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Cpm.FreeSpaceAddendum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :freeSpaceArea, 0

  field :freeSpaceConfidence, 1, type: :uint32
  field :freeSpaceCircular, 2, type: At.Srfg.Cits.Beta.Cpm.AreaCircular, oneof: 0
  field :freeSpaceEllipse, 3, type: At.Srfg.Cits.Beta.Cpm.AreaEllipse, oneof: 0
  field :freeSpacePolygon, 4, type: At.Srfg.Cits.Beta.Cpm.AreaPolygon, oneof: 0
  field :freeSpaceRectangle, 5, type: At.Srfg.Cits.Beta.Cpm.AreaRectangle, oneof: 0
  field :sensorIDList, 6, repeated: true, type: :uint32
  field :shadowingApplies, 7, type: :bool
end

defmodule At.Srfg.Cits.Beta.Cpm.FreeSpaceArea do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :freeSpaceCircular, 1, type: At.Srfg.Cits.Beta.Cpm.AreaCircular
  field :freeSpaceEllipse, 2, type: At.Srfg.Cits.Beta.Cpm.AreaEllipse
  field :freeSpacePolygon, 3, type: At.Srfg.Cits.Beta.Cpm.AreaPolygon
  field :freeSpaceRectangle, 4, type: At.Srfg.Cits.Beta.Cpm.AreaRectangle
end

defmodule At.Srfg.Cits.Beta.Cpm.PerceptionDataChoices do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sensorInformationCpmContainer, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cpm.SensorInformation

  field :perceivedObjectCpmContainer, 2, type: At.Srfg.Cits.Beta.Cpm.PerceivedObjectContainer

  field :freeSpaceAddendumCpmContainer, 3,
    repeated: true,
    type: At.Srfg.Cits.Beta.Cpm.FreeSpaceAddendum
end

defmodule At.Srfg.Cits.Beta.Cpm.StationDataContainerChoices do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :originatingStationRSUContainer, 0

  field :originatingStationVehicleContainer, 1,
    type: At.Srfg.Cits.Beta.Cpm.OriginatingVehicleContainer

  field :intersectionReferenceId, 2, type: At.Srfg.Cits.Beta.Cpm.IntersectionReferenceID, oneof: 0
  field :roadSegmentReferenceId, 3, type: At.Srfg.Cits.Beta.Cpm.RoadSegmentReferenceID, oneof: 0
end