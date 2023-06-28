defmodule At.Srfg.Cits.Beta.Mapem.LayerType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :none, 0
  field :mixedContent, 1
  field :generalMapData, 2
  field :intersectionData, 3
  field :curveData, 4
  field :roadwaySectionData, 5
  field :parkingAreaData, 6
  field :sharedLaneData, 7
end

defmodule At.Srfg.Cits.Beta.Mapem.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unknown, 0
  field :maxSpeedInSchoolZone, 1
  field :maxSpeedInSchoolZoneWhenChildrenArePresent, 2
  field :maxSpeedInConstructionZone, 3
  field :vehicleMinSpeed, 4
  field :vehicleMaxSpeed, 5
  field :vehicleNightMaxSpeed, 6
  field :truckMinSpeed, 7
  field :truckMaxSpeed, 8
  field :truckNightMaxSpeed, 9
  field :vehiclesWithTrailersMinSpeed, 10
  field :vehiclesWithTrailersMaxSpeed, 11
  field :vehiclesWithTrailersNightMaxSpeed, 12
end

defmodule At.Srfg.Cits.Beta.Mapem.LocalNode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reserved_local_node, 0
  field :stopLine, 1
  field :roundedCapStyleA, 2
  field :roundedCapStyleB, 3
  field :mergePoint, 4
  field :divergePoint, 5
  field :downstreamStopLine, 6
  field :downstreamStartNode, 7
  field :closedToTraffic, 8
  field :safeIsland, 9
  field :curbPresentAtStepOff, 10
  field :hydrantPresent, 11
end

defmodule At.Srfg.Cits.Beta.Mapem.SegmentAttributeXY do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reserved_segment_attribute_xy, 0
  field :doNotBlock, 1
  field :whiteLine, 2
  field :mergingLaneLeft, 3
  field :mergingLaneRight, 4
  field :curbOnLeft, 5
  field :curbOnRight, 6
  field :loadingzoneOnLeft, 7
  field :loadingzoneOnRight, 8
  field :turnOutPointOnLeft, 9
  field :turnOutPointOnRight, 10
  field :adjacentParkingOnLeft, 11
  field :adjacentParkingOnRight, 12
  field :adjacentBikeLaneOnLeft, 13
  field :adjacentBikeLaneOnRight, 14
  field :sharedBikeLane, 15
  field :bikeBoxInFront, 16
  field :transitStopOnLeft, 17
  field :transitStopOnRight, 18
  field :transitStopInLane, 19
  field :sharedWithTrackedVehicle, 20
  field :safeIsland_segment_attribute_xy, 21
  field :lowCurbsPresent, 22
  field :rumbleStripPresent, 23
  field :audibleSignalingPresent, 24
  field :adaptiveTimingPresent, 25
  field :rfSignalRequestPresent, 26
  field :partialCurbIntrusion, 27
  field :taperToLeft, 28
  field :taperToRight, 29
  field :taperToCenterLine, 30
  field :parallelParking, 31
  field :headInParking, 32
  field :freeParking, 33
  field :timeRestrictionsOnParking, 34
  field :costToPark, 35
  field :midBlockCurbPresent, 36
  field :unEvenPavementPresent, 37
end

defmodule At.Srfg.Cits.Beta.Mapem.RestrictionAppliesTo do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :none_restriction_applies_to, 0
  field :equippedTransit, 1
  field :equippedTaxis, 2
  field :equippedOther, 3
  field :emissionCompliant, 4
  field :equippedBicycle, 5
  field :weightCompliant, 6
  field :heightCompliant, 7
  field :pedestrians, 8
  field :slowMovingPersons, 9
  field :wheelchairUsers, 10
  field :visualDisabilities, 11
  field :audioDisabilities, 12
  field :otherUnknownDisabilities, 13
end

defmodule At.Srfg.Cits.Beta.Mapem.MAPEM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Mapem.ItsPduHeader
  field :map, 2, type: At.Srfg.Cits.Beta.Mapem.MapData
end

defmodule At.Srfg.Cits.Beta.Mapem.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Mapem.MapData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeStamp, 1, type: :uint32
  field :msgIssueRevision, 2, type: :uint32
  field :layerType, 3, type: At.Srfg.Cits.Beta.Mapem.LayerType, enum: true
  field :layerID, 4, type: :uint32
  field :intersections, 5, repeated: true, type: At.Srfg.Cits.Beta.Mapem.IntersectionGeometry
  field :roadSegments, 6, repeated: true, type: At.Srfg.Cits.Beta.Mapem.RoadSegment
  field :dataParameters, 7, type: At.Srfg.Cits.Beta.Mapem.DataParameters

  field :restrictionList, 8,
    repeated: true,
    type: At.Srfg.Cits.Beta.Mapem.RestrictionClassAssignment

  field :regional, 9, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.IntersectionGeometry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: At.Srfg.Cits.Beta.Mapem.IntersectionReferenceID
  field :revision, 3, type: :uint32
  field :refPoint, 4, type: At.Srfg.Cits.Beta.Mapem.Position3D
  field :laneWidth, 5, type: :uint32
  field :speedLimits, 6, repeated: true, type: At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimit
  field :laneSet, 7, repeated: true, type: At.Srfg.Cits.Beta.Mapem.GenericLane
  field :preemptPriorityData, 8, repeated: true, type: At.Srfg.Cits.Beta.Mapem.SignalControlZone
  field :regional, 9, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Mapem.Position3D do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lat, 1, type: :int32
  field :long, 2, type: :int32
  field :elevation, 3, type: :int32
  field :regional, 4, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.Regional do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: At.Srfg.Cits.Beta.Mapem.Type, enum: true
  field :speed, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Mapem.GenericLane do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :nodeList, 0

  field :laneID, 1, type: :uint32
  field :name, 2, type: :string
  field :ingressApproach, 3, type: :uint32
  field :egressApproach, 4, type: :uint32
  field :laneAttributes, 5, type: At.Srfg.Cits.Beta.Mapem.LaneAttributes
  field :maneuvers, 6, type: :string
  field :computed, 7, type: At.Srfg.Cits.Beta.Mapem.ComputedLane, oneof: 0
  field :nodes, 8, type: At.Srfg.Cits.Beta.Mapem.NodeXYWrapper, oneof: 0
  field :connectsTo, 9, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Connection
  field :overlays, 10, repeated: true, type: :uint32
  field :regional, 11, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.NodeXYWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nodes, 1, repeated: true, type: At.Srfg.Cits.Beta.Mapem.NodeXY
end

defmodule At.Srfg.Cits.Beta.Mapem.LaneAttributes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :laneType, 0

  field :directionalUse, 1, type: :string
  field :sharedWith, 2, type: :string
  field :bikeLane, 3, type: :string, oneof: 0
  field :crosswalk, 4, type: :string, oneof: 0
  field :median, 5, type: :string, oneof: 0
  field :parking, 6, type: :string, oneof: 0
  field :sidewalk, 7, type: :string, oneof: 0
  field :striping, 8, type: :string, oneof: 0
  field :trackedVehicle, 9, type: :string, oneof: 0
  field :vehicle, 10, type: :string, oneof: 0
  field :regional, 11, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.LaneType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bikeLane, 1, type: :string
  field :crosswalk, 2, type: :string
  field :median, 3, type: :string
  field :parking, 4, type: :string
  field :sidewalk, 5, type: :string
  field :striping, 6, type: :string
  field :trackedVehicle, 7, type: :string
  field :vehicle, 8, type: :string
end

defmodule At.Srfg.Cits.Beta.Mapem.NodeList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :computed, 1, type: At.Srfg.Cits.Beta.Mapem.ComputedLane
  field :nodes, 2, repeated: true, type: At.Srfg.Cits.Beta.Mapem.NodeXY
end

defmodule At.Srfg.Cits.Beta.Mapem.ComputedLane do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :referenceLaneId, 1, type: :uint32
  field :offsetXaxis, 2, type: At.Srfg.Cits.Beta.Mapem.OffsetXaxis
  field :offsetYaxis, 3, type: At.Srfg.Cits.Beta.Mapem.OffsetYaxis
  field :rotateXY, 6, type: :uint32
  field :scaleXaxis, 7, type: :int32
  field :scaleYaxis, 8, type: :int32
  field :regional, 9, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.OffsetXaxis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :offsetXaxis, 0

  field :large, 2, type: :int32, oneof: 0
  field :small, 3, type: :int32, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Mapem.OffsetYaxis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :offsetYaxis, 0

  field :large, 4, type: :int32, oneof: 0
  field :small, 5, type: :int32, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Mapem.NodeXY do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :delta, 0

  field :node_LatLon, 1,
    type: At.Srfg.Cits.Beta.Mapem.Node_LLmD64b,
    json_name: "nodeLatLon",
    oneof: 0

  field :node_XY1, 2, type: At.Srfg.Cits.Beta.Mapem.Node_XY20b, json_name: "nodeXY1", oneof: 0
  field :node_XY2, 3, type: At.Srfg.Cits.Beta.Mapem.Node_XY22b, json_name: "nodeXY2", oneof: 0
  field :node_XY3, 4, type: At.Srfg.Cits.Beta.Mapem.Node_XY24b, json_name: "nodeXY3", oneof: 0
  field :node_XY4, 5, type: At.Srfg.Cits.Beta.Mapem.Node_XY26b, json_name: "nodeXY4", oneof: 0
  field :node_XY5, 6, type: At.Srfg.Cits.Beta.Mapem.Node_XY28b, json_name: "nodeXY5", oneof: 0
  field :node_XY6, 7, type: At.Srfg.Cits.Beta.Mapem.Node_XY32b, json_name: "nodeXY6", oneof: 0
  field :regional, 8, type: At.Srfg.Cits.Beta.Mapem.Regional, oneof: 0
  field :attributes, 9, type: At.Srfg.Cits.Beta.Mapem.NodeAttributeSetXY
end

defmodule At.Srfg.Cits.Beta.Mapem.Delta do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_LatLon, 1, type: At.Srfg.Cits.Beta.Mapem.Node_LLmD64b, json_name: "nodeLatLon"
  field :node_XY1, 2, type: At.Srfg.Cits.Beta.Mapem.Node_XY20b, json_name: "nodeXY1"
  field :node_XY2, 3, type: At.Srfg.Cits.Beta.Mapem.Node_XY22b, json_name: "nodeXY2"
  field :node_XY3, 4, type: At.Srfg.Cits.Beta.Mapem.Node_XY24b, json_name: "nodeXY3"
  field :node_XY4, 5, type: At.Srfg.Cits.Beta.Mapem.Node_XY26b, json_name: "nodeXY4"
  field :node_XY5, 6, type: At.Srfg.Cits.Beta.Mapem.Node_XY28b, json_name: "nodeXY5"
  field :node_XY6, 7, type: At.Srfg.Cits.Beta.Mapem.Node_XY32b, json_name: "nodeXY6"
  field :regional, 8, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_LLmD64b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lon, 1, type: :int32
  field :lat, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY20b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY22b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY24b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY26b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY28b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.Node_XY32b do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Mapem.NodeAttributeSetXY do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :localNode, 1, repeated: true, type: At.Srfg.Cits.Beta.Mapem.LocalNode, enum: true
  field :disabled, 2, repeated: true, type: At.Srfg.Cits.Beta.Mapem.SegmentAttributeXY, enum: true
  field :enabled, 3, repeated: true, type: At.Srfg.Cits.Beta.Mapem.SegmentAttributeXY, enum: true
  field :data, 4, repeated: true, type: At.Srfg.Cits.Beta.Mapem.LaneDataAttribute
  field :dWidth, 5, type: :int32
  field :dElevation, 6, type: :int32
  field :regional, 7, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.LaneDataAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: At.Srfg.Cits.Beta.Mapem.Data
end

defmodule At.Srfg.Cits.Beta.Mapem.Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data, 0

  field :laneAngle, 1, type: :int32, oneof: 0
  field :laneCrownPointCenter, 2, type: :int32, oneof: 0
  field :laneCrownPointLeft, 3, type: :int32, oneof: 0
  field :laneCrownPointRight, 4, type: :int32, oneof: 0
  field :pathEndPointAngle, 5, type: :int32, oneof: 0
  field :regional, 6, type: At.Srfg.Cits.Beta.Mapem.RegionalSequence, oneof: 0
  field :speedLimits, 7, type: At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimitSequence, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimitSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedLimits, 1, repeated: true, type: At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimit
end

defmodule At.Srfg.Cits.Beta.Mapem.Connection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connectingLane, 1, type: At.Srfg.Cits.Beta.Mapem.ConnectingLane
  field :remoteIntersection, 2, type: At.Srfg.Cits.Beta.Mapem.IntersectionReferenceID
  field :signalGroup, 3, type: :uint32
  field :userClass, 4, type: :uint32
  field :connectionID, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Mapem.ConnectingLane do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lane, 1, type: :uint32
  field :maneuver, 2, type: :string
end

defmodule At.Srfg.Cits.Beta.Mapem.SignalControlZone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zone, 1, type: At.Srfg.Cits.Beta.Mapem.Zone
end

defmodule At.Srfg.Cits.Beta.Mapem.Zone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Mapem.RoadSegment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: At.Srfg.Cits.Beta.Mapem.RoadSegmentReferenceID
  field :revision, 3, type: :uint32
  field :refPoint, 4, type: At.Srfg.Cits.Beta.Mapem.Position3D
  field :laneWidth, 5, type: :uint32
  field :speedLimits, 6, repeated: true, type: At.Srfg.Cits.Beta.Mapem.RegulatorySpeedLimit
  field :roadLaneSet, 7, repeated: true, type: At.Srfg.Cits.Beta.Mapem.GenericLane
  field :regional, 8, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end

defmodule At.Srfg.Cits.Beta.Mapem.RoadSegmentReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Mapem.DataParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :processMethod, 1, type: :string
  field :processAgency, 2, type: :string
  field :lastCheckedDate, 3, type: :string
  field :geoidUsed, 4, type: :string
end

defmodule At.Srfg.Cits.Beta.Mapem.RestrictionClassAssignment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :uint32
  field :users, 2, repeated: true, type: At.Srfg.Cits.Beta.Mapem.RestrictionUserType
end

defmodule At.Srfg.Cits.Beta.Mapem.RestrictionUserType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :restrictionUserTypeUsers, 0

  field :basicType, 1, type: At.Srfg.Cits.Beta.Mapem.RestrictionAppliesTo, enum: true, oneof: 0
  field :regional, 2, type: At.Srfg.Cits.Beta.Mapem.RegionalSequence, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Mapem.RegionalSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :regional, 1, repeated: true, type: At.Srfg.Cits.Beta.Mapem.Regional
end