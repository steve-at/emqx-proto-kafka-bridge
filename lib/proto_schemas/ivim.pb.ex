defmodule At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryL do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :l1, 0
  field :l2, 1
  field :l3, 2
  field :l4, 3
  field :l5, 4
  field :l6, 5
  field :l7, 6
end

defmodule At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryM do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :m1, 0
  field :m2, 1
  field :m3, 2
end

defmodule At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryN do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :n1, 0
  field :n2, 1
  field :n3, 2
end

defmodule At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryO do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :o1, 0
  field :o2, 1
  field :o3, 2
  field :o4, 3
end

defmodule At.Srfg.Cits.Beta.Ivim.EuroValue do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noEntry, 0
  field :euro_1, 1
  field :euro_2, 2
  field :euro_3, 3
  field :euro_4, 4
  field :euro_5, 5
  field :euro_6, 6
  field :reservedForUse1, 7
  field :reservedForUse2, 8
  field :reservedForUse3, 9
  field :reservedForUse4, 10
  field :reservedForUse5, 11
  field :reservedForUse6, 12
  field :reservedForUse7, 13
  field :reservedForUse8, 14
  field :eev, 15
end

defmodule At.Srfg.Cits.Beta.Ivim.CopValue do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :noEntry_cop_value, 0
  field :co2class1, 1
  field :co2class2, 2
  field :co2class3, 3
  field :co2class4, 4
  field :co2class5, 5
  field :co2class6, 6
  field :co2class7, 7
  field :reservedforUse, 8
end

defmodule At.Srfg.Cits.Beta.Ivim.DangerousGoodsType do
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

defmodule At.Srfg.Cits.Beta.Ivim.Usage do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default, 0
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

defmodule At.Srfg.Cits.Beta.Ivim.UnitType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mg_km, 0
  field :mg_kWh, 1
end

defmodule At.Srfg.Cits.Beta.Ivim.TrafficSignPictogram do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dangerWarning, 0
  field :regulatory, 1
  field :informative, 2
end

defmodule At.Srfg.Cits.Beta.Ivim.PublicFacilitiesPictogram do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :publicFacilities, 0
end

defmodule At.Srfg.Cits.Beta.Ivim.AmbientOrRoadConditionPictogram do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ambientCondition, 0
  field :roadCondition, 1
end

defmodule At.Srfg.Cits.Beta.Ivim.AltitudeConfidence do
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

defmodule At.Srfg.Cits.Beta.Ivim.RoadType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :urban_NoStructuralSeparationToOppositeLanes, 0
  field :urban_WithStructuralSeparationToOppositeLanes, 1
  field :nonUrban_NoStructuralSeparationToOppositeLanes, 2
  field :nonUrban_WithStructuralSeparationToOppositeLanes, 3
end

defmodule At.Srfg.Cits.Beta.Ivim.IVIM do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: At.Srfg.Cits.Beta.Ivim.ItsPduHeader
  field :ivi, 2, type: At.Srfg.Cits.Beta.Ivim.IviStructure
end

defmodule At.Srfg.Cits.Beta.Ivim.ItsPduHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocolVersion, 1, type: :uint32
  field :messageID, 2, type: :uint32
  field :stationID, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.IviStructure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mandatory, 1, type: At.Srfg.Cits.Beta.Ivim.IviManagementContainer
  field :optional, 2, repeated: true, type: At.Srfg.Cits.Beta.Ivim.IviContainer
end

defmodule At.Srfg.Cits.Beta.Ivim.IviContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :iviContainer, 0

  field :avc, 1, type: At.Srfg.Cits.Beta.Ivim.AvcPartSequence, oneof: 0
  field :giv, 2, type: At.Srfg.Cits.Beta.Ivim.GicPartSequence, oneof: 0
  field :glc, 3, type: At.Srfg.Cits.Beta.Ivim.GeographicLocationContainer, oneof: 0
  field :lac, 4, type: At.Srfg.Cits.Beta.Ivim.LayoutContainer, oneof: 0
  field :mlc, 5, type: At.Srfg.Cits.Beta.Ivim.MapLocationContainer, oneof: 0
  field :rcc, 6, type: At.Srfg.Cits.Beta.Ivim.RccPartSequence, oneof: 0
  field :rsc, 7, type: At.Srfg.Cits.Beta.Ivim.RscPartSequence, oneof: 0
  field :tc, 8, type: At.Srfg.Cits.Beta.Ivim.TcPartSequence, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.IviManagementContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :serviceProviderId, 1, type: At.Srfg.Cits.Beta.Ivim.Provider
  field :iviIdentificationNumber, 2, type: :int32
  field :timeStamp, 3, type: :uint64
  field :validFrom, 4, type: :uint64
  field :validTo, 5, type: :uint64
  field :connectedIviStructures, 6, repeated: true, type: :int32
  field :iviStatus, 7, type: :uint32
  field :connectedDenms, 8, repeated: true, type: At.Srfg.Cits.Beta.Ivim.ActionID
end

defmodule At.Srfg.Cits.Beta.Ivim.TcPartSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tcParts, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.TcPart
end

defmodule At.Srfg.Cits.Beta.Ivim.RscPartSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rscParts, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.RscPart
end

defmodule At.Srfg.Cits.Beta.Ivim.RccPartSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rccParts, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.RccPart
end

defmodule At.Srfg.Cits.Beta.Ivim.Provider do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :countryCode, 1, type: :string
  field :providerIdentifier, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.ActionID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :originatingStationID, 1, type: :uint32
  field :sequenceNumber, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.AvcPartSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :avcParts, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.AvcPart
end

defmodule At.Srfg.Cits.Beta.Ivim.AvcPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detectionZoneIds, 1, repeated: true, type: :int32
  field :relevanceZoneIds, 2, repeated: true, type: :int32
  field :direction, 3, type: :uint32
  field :applicableLanes, 4, repeated: true, type: :int32

  field :vehicleCharacteristics, 5,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.CompleteVehicleCharacteristics

  field :automatedVehicleRules, 6,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.AutomatedVehicleRule

  field :platooningRules, 7, repeated: true, type: At.Srfg.Cits.Beta.Ivim.PlatooningRule
end

defmodule At.Srfg.Cits.Beta.Ivim.CompleteVehicleCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tractor, 1, type: At.Srfg.Cits.Beta.Ivim.TractorCharacteristics
  field :trailer, 2, repeated: true, type: At.Srfg.Cits.Beta.Ivim.TrailerCharacteristics
  field :train, 3, type: At.Srfg.Cits.Beta.Ivim.TractorCharacteristics
end

defmodule At.Srfg.Cits.Beta.Ivim.TractorCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :equalTo, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsFixValues

  field :notEqualTo, 2,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsFixValues

  field :ranges, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsRanges
end

defmodule At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsFixValues do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :vehicleCharacteristicsFixValues, 0

  field :engineCharacteristics, 1, type: :uint32, oneof: 0

  field :euVehicleCategoryCode, 2,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryCodeWrapper,
    oneof: 0

  field :euroAndCo2value, 3, type: At.Srfg.Cits.Beta.Ivim.EnvironmentalCharacteristics, oneof: 0
  field :iso3833VehicleType, 4, type: :uint32, oneof: 0
  field :loadType, 5, type: At.Srfg.Cits.Beta.Ivim.LoadType, oneof: 0
  field :simpleVehicleType, 6, type: :uint32, oneof: 0
  field :usage, 7, type: At.Srfg.Cits.Beta.Ivim.Usage, enum: true, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.EqualTo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryCodeWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :euVehicleCategoryCode, 0

  field :euVehicleCategoryL, 1,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryL,
    enum: true,
    oneof: 0

  field :euVehicleCategoryM, 2,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryM,
    enum: true,
    oneof: 0

  field :euVehicleCategoryN, 3,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryN,
    enum: true,
    oneof: 0

  field :euVehicleCategoryO, 4,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryO,
    enum: true,
    oneof: 0

  field :euVehilcleCategoryG, 5, type: :uint32, oneof: 0
  field :euVehilcleCategoryT, 6, type: :uint32, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.EnvironmentalCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :euroValue, 1, type: At.Srfg.Cits.Beta.Ivim.EuroValue, enum: true
  field :copValue, 2, type: At.Srfg.Cits.Beta.Ivim.CopValue, enum: true
end

defmodule At.Srfg.Cits.Beta.Ivim.LoadType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :goodsType, 1, type: :int32
  field :dangerousGoodsType, 2, type: At.Srfg.Cits.Beta.Ivim.DangerousGoodsType, enum: true
  field :specialTransportType, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Ivim.NotEqualTo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :euVehicleCategoryCode, 0

  field :engineCharacteristics, 1, type: :uint32

  field :euVehicleCategoryL, 2,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryL,
    enum: true,
    oneof: 0

  field :euVehicleCategoryM, 3,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryM,
    enum: true,
    oneof: 0

  field :euVehicleCategoryN, 4,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryN,
    enum: true,
    oneof: 0

  field :euVehicleCategoryO, 5,
    type: At.Srfg.Cits.Beta.Ivim.EuVehicleCategoryO,
    enum: true,
    oneof: 0

  field :euVehilcleCategoryG, 6, type: :uint32, oneof: 0
  field :euVehilcleCategoryT, 7, type: :uint32, oneof: 0
  field :euroAndCo2value, 8, type: At.Srfg.Cits.Beta.Ivim.EnvironmentalCharacteristics
  field :iso3833VehicleType, 9, type: :uint32
  field :loadType, 10, type: At.Srfg.Cits.Beta.Ivim.LoadType
  field :simpleVehicleType, 11, type: :uint32
  field :usage, 12, type: At.Srfg.Cits.Beta.Ivim.Usage, enum: true
end

defmodule At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsRanges do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :limits, 0

  field :comparisonOperator, 1, type: :uint32
  field :axleWeightLimits, 2, type: At.Srfg.Cits.Beta.Ivim.AxleWeightLimits, oneof: 0
  field :dieselEmissionValues, 3, type: At.Srfg.Cits.Beta.Ivim.DieselEmissionValues, oneof: 0
  field :exhaustEmissionValues, 4, type: At.Srfg.Cits.Beta.Ivim.ExhaustEmissionValues, oneof: 0
  field :numberOfAxles, 5, type: :uint32, oneof: 0
  field :passengerCapacity, 6, type: At.Srfg.Cits.Beta.Ivim.PassengerCapacity, oneof: 0
  field :soundLevel, 7, type: At.Srfg.Cits.Beta.Ivim.SoundLevel, oneof: 0
  field :vehicleDimensions, 8, type: At.Srfg.Cits.Beta.Ivim.VehicleDimensions, oneof: 0
  field :vehicleWeightLimits, 9, type: At.Srfg.Cits.Beta.Ivim.VehicleWeightLimits, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.Limits do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :axleWeightLimits, 1, type: At.Srfg.Cits.Beta.Ivim.AxleWeightLimits
  field :dieselEmissionValues, 2, type: At.Srfg.Cits.Beta.Ivim.DieselEmissionValues
  field :exhaustEmissionValues, 3, type: At.Srfg.Cits.Beta.Ivim.ExhaustEmissionValues
  field :numberOfAxles, 4, type: :uint32
  field :passengerCapacity, 5, type: At.Srfg.Cits.Beta.Ivim.PassengerCapacity
  field :soundLevel, 6, type: At.Srfg.Cits.Beta.Ivim.SoundLevel
  field :vehicleDimensions, 7, type: At.Srfg.Cits.Beta.Ivim.VehicleDimensions
  field :vehicleWeightLimits, 8, type: At.Srfg.Cits.Beta.Ivim.VehicleWeightLimits
end

defmodule At.Srfg.Cits.Beta.Ivim.AxleWeightLimits do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :maxLadenweightOnAxle1, 1, type: :uint32
  field :maxLadenweightOnAxle2, 2, type: :uint32
  field :maxLadenweightOnAxle3, 3, type: :uint32
  field :maxLadenweightOnAxle4, 4, type: :uint32
  field :maxLadenweightOnAxle5, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.DieselEmissionValues do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :particulate, 1, type: At.Srfg.Cits.Beta.Ivim.Particulate
  field :absorptionCoeff, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.Particulate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unitType, 1, type: At.Srfg.Cits.Beta.Ivim.UnitType, enum: true
  field :value, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.ExhaustEmissionValues do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unitType, 1, type: At.Srfg.Cits.Beta.Ivim.UnitType, enum: true
  field :emissionCO, 2, type: :uint32
  field :emissionHC, 3, type: :uint32
  field :emissionNOX, 4, type: :uint32
  field :emissionHCNOX, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.PassengerCapacity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :numberOfSeats, 1, type: :uint32
  field :numberOfStandingPlaces, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.SoundLevel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :soundstationary, 1, type: :uint32
  field :sounddriveby, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.VehicleDimensions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleLengthOverall, 1, type: :uint32
  field :vehicleHeigthOverall, 2, type: :uint32
  field :vehicleWidthOverall, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.VehicleWeightLimits do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleMaxLadenWeight, 1, type: :uint32
  field :vehicleTrainMaximumWeight, 2, type: :uint32
  field :vehicleWeightUnladen, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.TrailerCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :equalTo, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsFixValues

  field :notEqualTo, 2,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsFixValues

  field :ranges, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.VehicleCharacteristicsRanges
end

defmodule At.Srfg.Cits.Beta.Ivim.AutomatedVehicleRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priority, 1, type: :uint32
  field :allowedSaeAutomationLevels, 2, repeated: true, type: :uint32
  field :minGapBetweenVehicles, 3, type: :uint32
  field :recGapBetweenVehicles, 4, type: :uint32
  field :automatedVehicleMaxSpeedLimit, 5, type: :uint32
  field :automatedVehicleMinSpeedLimit, 6, type: :uint32
  field :automatedVehicleSpeedRecommendation, 7, type: :uint32
  field :roadSignCodes, 8, repeated: true, type: At.Srfg.Cits.Beta.Ivim.RSCode
  field :extraText, 9, repeated: true, type: At.Srfg.Cits.Beta.Ivim.Text
end

defmodule At.Srfg.Cits.Beta.Ivim.RSCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :code, 0

  field :layoutComponentId, 1, type: :int32
  field :anyCatalogue, 2, type: At.Srfg.Cits.Beta.Ivim.AnyCatalogue, oneof: 0
  field :iso14823, 3, type: At.Srfg.Cits.Beta.Ivim.ISO14823Code, oneof: 0
  field :itisCodes, 4, type: :uint32, oneof: 0
  field :viennaConvention, 5, type: At.Srfg.Cits.Beta.Ivim.VcCode, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.Code do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :anyCatalogue, 1, type: At.Srfg.Cits.Beta.Ivim.AnyCatalogue
  field :iso14823, 2, type: At.Srfg.Cits.Beta.Ivim.ISO14823Code
  field :itisCodes, 3, type: :uint32
  field :viennaConvention, 4, type: At.Srfg.Cits.Beta.Ivim.VcCode
end

defmodule At.Srfg.Cits.Beta.Ivim.AnyCatalogue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :owner, 1, type: At.Srfg.Cits.Beta.Ivim.Provider
  field :version, 2, type: :uint32
  field :pictogramCode, 3, type: :uint32
  field :value, 4, type: :uint32
  field :unit, 5, type: :uint32
  field :attributes, 6, repeated: true, type: At.Srfg.Cits.Beta.Ivim.ISO14823Attribute
end

defmodule At.Srfg.Cits.Beta.Ivim.ISO14823Attribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :attributes, 0

  field :dbv, 1, type: At.Srfg.Cits.Beta.Ivim.Distance, oneof: 0
  field :ddd, 2, type: At.Srfg.Cits.Beta.Ivim.InternationalSignDestinationInformation, oneof: 0
  field :dfl, 3, type: :uint32, oneof: 0
  field :dtm, 4, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod, oneof: 0
  field :edt, 5, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod, oneof: 0
  field :roi, 6, type: :uint32, oneof: 0
  field :spe, 7, type: At.Srfg.Cits.Beta.Ivim.InternationalSignSpeedLimits, oneof: 0

  field :ved, 8,
    type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicableVehicleDimensions,
    oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.Attributes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dbv, 1, type: At.Srfg.Cits.Beta.Ivim.Distance
  field :ddd, 2, type: At.Srfg.Cits.Beta.Ivim.InternationalSignDestinationInformation
  field :dfl, 3, type: :uint32
  field :dtm, 4, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod
  field :edt, 5, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod
  field :roi, 6, type: :uint32
  field :spe, 7, type: At.Srfg.Cits.Beta.Ivim.InternationalSignSpeedLimits
  field :ved, 8, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicableVehicleDimensions
end

defmodule At.Srfg.Cits.Beta.Ivim.Distance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :unit, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.InternationalSignDestinationInformation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :junctionDirection, 1, type: :uint32
  field :roundaboutCwDirection, 2, type: :uint32
  field :roundaboutCcwDirection, 3, type: :uint32
  field :ioList, 4, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DDD_IO
end

defmodule At.Srfg.Cits.Beta.Ivim.DDD_IO do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :arrowDirection, 1, type: :uint32
  field :destPlace, 2, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DestinationPlace
  field :destRoad, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DestinationRoad
  field :roadNumberIdentifier, 4, type: :uint32
  field :streetName, 5, type: :uint32
  field :streetNameText, 6, type: :string
  field :distanceToDivergingPoint, 7, type: At.Srfg.Cits.Beta.Ivim.DistanceOrDuration
  field :distanceToDestinationPlace, 8, type: At.Srfg.Cits.Beta.Ivim.DistanceOrDuration
end

defmodule At.Srfg.Cits.Beta.Ivim.DestinationPlace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :destType, 1, type: :int32
  field :destRSCode, 2, type: At.Srfg.Cits.Beta.Ivim.GddStructure
  field :destBlob, 3, type: :string
  field :placeNameIdentification, 4, type: :uint32
  field :placeNameText, 5, type: :string
end

defmodule At.Srfg.Cits.Beta.Ivim.GddStructure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pictogramCode, 1, type: At.Srfg.Cits.Beta.Ivim.PictogramCodeGdd
  field :attributes, 2, repeated: true, type: At.Srfg.Cits.Beta.Ivim.GddAttribute
end

defmodule At.Srfg.Cits.Beta.Ivim.GddAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :attributes, 0

  field :dbv, 1, type: At.Srfg.Cits.Beta.Ivim.Distance, oneof: 0
  field :ddd, 2, type: At.Srfg.Cits.Beta.Ivim.InternationalSignDestinationInformation, oneof: 0
  field :dfl, 3, type: :uint32, oneof: 0
  field :dtm, 4, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod, oneof: 0
  field :edt, 5, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod, oneof: 0
  field :nol, 6, type: :uint32, oneof: 0
  field :roi, 7, type: :uint32, oneof: 0
  field :set, 8, type: At.Srfg.Cits.Beta.Ivim.InternationalSignSection, oneof: 0
  field :spe, 9, type: At.Srfg.Cits.Beta.Ivim.InternationalSignSpeedLimits, oneof: 0

  field :ved, 10,
    type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicableVehicleDimensions,
    oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.PictogramCodeGdd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :serviceCategoryCode, 0

  field :countryCode, 1, type: :string

  field :trafficSignPictogram, 2,
    type: At.Srfg.Cits.Beta.Ivim.TrafficSignPictogram,
    enum: true,
    oneof: 0

  field :publicFacilitiesPictogram, 3,
    type: At.Srfg.Cits.Beta.Ivim.PublicFacilitiesPictogram,
    enum: true,
    oneof: 0

  field :ambientOrRoadConditionPictogram, 4,
    type: At.Srfg.Cits.Beta.Ivim.AmbientOrRoadConditionPictogram,
    enum: true,
    oneof: 0

  field :pictogramCategoryCode, 5, type: At.Srfg.Cits.Beta.Ivim.PictogramCategoryCode
end

defmodule At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :year, 1, type: At.Srfg.Cits.Beta.Ivim.Year
  field :month_day, 2, type: At.Srfg.Cits.Beta.Ivim.MonthDay, json_name: "monthDay"
  field :repeatingPeriodDayTypes, 3, type: :string
  field :hourMinutes, 4, type: At.Srfg.Cits.Beta.Ivim.HourMinutes
  field :dateRangeOfWeek, 5, type: :string
  field :durationHourMinute, 6, type: At.Srfg.Cits.Beta.Ivim.HoursMinutes
end

defmodule At.Srfg.Cits.Beta.Ivim.Year do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :yearRangeStartYear, 1, type: :int32
  field :yearRangeEndYear, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.MonthDay do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dateRangeStartMonthDay, 1, type: At.Srfg.Cits.Beta.Ivim.MonthDay
  field :dateRangeEndMonthDay, 2, type: At.Srfg.Cits.Beta.Ivim.MonthDay
end

defmodule At.Srfg.Cits.Beta.Ivim.HourMinutes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeRangeStartTime, 1, type: At.Srfg.Cits.Beta.Ivim.HoursMinutes
  field :timeRangeEndTime, 2, type: At.Srfg.Cits.Beta.Ivim.HoursMinutes
end

defmodule At.Srfg.Cits.Beta.Ivim.HoursMinutes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hours, 1, type: :int32
  field :mins, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.InternationalSignSection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :startingPointLength, 1, type: At.Srfg.Cits.Beta.Ivim.Distance
  field :continuityLength, 2, type: At.Srfg.Cits.Beta.Ivim.Distance
end

defmodule At.Srfg.Cits.Beta.Ivim.InternationalSignSpeedLimits do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedLimitMax, 1, type: :uint32
  field :speedLimitMin, 2, type: :uint32
  field :unit, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.InternationalSignApplicableVehicleDimensions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vehicleHeight, 1, type: At.Srfg.Cits.Beta.Ivim.Distance
  field :vehicleWidth, 2, type: At.Srfg.Cits.Beta.Ivim.Distance
  field :vehicleLength, 3, type: At.Srfg.Cits.Beta.Ivim.Distance
  field :vehicleWeight, 4, type: At.Srfg.Cits.Beta.Ivim.Weight
end

defmodule At.Srfg.Cits.Beta.Ivim.Weight do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :unit, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.DestinationRoad do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :derType, 1, type: :int32
  field :roadNumberIdentifier, 2, type: :uint32
  field :roadNumberText, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Ivim.DistanceOrDuration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :uint32
  field :unit, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.ISO14823Code do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pictogramCode, 1, type: At.Srfg.Cits.Beta.Ivim.PictogramCodeISO14823
  field :attributes, 2, repeated: true, type: At.Srfg.Cits.Beta.Ivim.ISO14823Attribute
end

defmodule At.Srfg.Cits.Beta.Ivim.PictogramCodeISO14823 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :serviceCategoryCode, 0

  field :countryCode, 1, type: :string

  field :trafficSignPictogram, 2,
    type: At.Srfg.Cits.Beta.Ivim.TrafficSignPictogram,
    enum: true,
    oneof: 0

  field :publicFacilitiesPictogram, 3,
    type: At.Srfg.Cits.Beta.Ivim.PublicFacilitiesPictogram,
    enum: true,
    oneof: 0

  field :ambientOrRoadConditionPictogram, 4,
    type: At.Srfg.Cits.Beta.Ivim.AmbientOrRoadConditionPictogram,
    enum: true,
    oneof: 0

  field :pictogramCategoryCode, 5, type: At.Srfg.Cits.Beta.Ivim.PictogramCategoryCode
end

defmodule At.Srfg.Cits.Beta.Ivim.PictogramCategoryCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nature, 1, type: :int32
  field :serialNumber, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.VcCode do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :roadSignClass, 1, type: :uint32
  field :roadSignCode, 2, type: :uint32
  field :vcOption, 3, type: :uint32

  field :validity, 4,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod

  field :value, 5, type: :uint32
  field :unit, 6, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.Text do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :layoutComponentId, 1, type: :int32
  field :language, 2, type: :string
  field :textContent, 3, type: :string
end

defmodule At.Srfg.Cits.Beta.Ivim.PlatooningRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :priority, 1, type: :uint32
  field :allowedSaeAutomationLevels, 2, repeated: true, type: :uint32
  field :maxNoOfVehicles, 3, type: :uint32
  field :maxLenghtOfPlatoon, 4, type: :uint32
  field :minGapBetweenVehicles, 5, type: :uint32
  field :platoonMaxSpeedLimit, 6, type: :uint32
  field :platoonMinSpeedLimit, 7, type: :uint32
  field :platoonSpeedRecommendation, 8, type: :uint32
  field :roadSignCodes, 9, repeated: true, type: At.Srfg.Cits.Beta.Ivim.RSCode
  field :extraText, 10, repeated: true, type: At.Srfg.Cits.Beta.Ivim.Text
end

defmodule At.Srfg.Cits.Beta.Ivim.GicPartSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gicParts, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.GicPart
end

defmodule At.Srfg.Cits.Beta.Ivim.GicPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :its_Rrid, 0

  field :detectionZoneIds, 1, repeated: true, type: :int32
  field :content, 2, type: :uint32, oneof: 0
  field :extension, 3, type: At.Srfg.Cits.Beta.Ivim.Ext1Wrapper, oneof: 0
  field :relevanceZoneIds, 4, repeated: true, type: :int32
  field :direction, 5, type: :uint32
  field :driverAwarenessZoneIds, 6, repeated: true, type: :int32
  field :minimumAwarenessTime, 7, type: :uint32
  field :applicableLanes, 8, repeated: true, type: :int32
  field :iviType, 9, type: :uint32
  field :iviPurpose, 10, type: :uint32
  field :laneStatus, 11, type: :int32

  field :vehicleCharacteristics, 12,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.CompleteVehicleCharacteristics

  field :driverCharacteristics, 13, type: :uint32
  field :layoutId, 14, type: :int32
  field :preStoredlayoutId, 15, type: :int32
  field :roadSignCodes, 16, repeated: true, type: At.Srfg.Cits.Beta.Ivim.RSCode
  field :extraText, 17, repeated: true, type: At.Srfg.Cits.Beta.Ivim.Text
end

defmodule At.Srfg.Cits.Beta.Ivim.Ext1Wrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :ext1, 0

  field :content, 2, type: :uint32, oneof: 0
  field :extension, 3, type: At.Srfg.Cits.Beta.Ivim.Ext2Wrapper, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.Ext2Wrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :ext2, 0

  field :content, 2, type: :uint32, oneof: 0
  field :extension, 3, type: :int32, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.GeographicLocationContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :referencePosition, 1, type: At.Srfg.Cits.Beta.Ivim.ReferencePosition
  field :referencePositionTime, 2, type: :uint64
  field :referencePositionHeading, 3, type: At.Srfg.Cits.Beta.Ivim.Heading
  field :referencePositionSpeed, 4, type: At.Srfg.Cits.Beta.Ivim.Speed
  field :parts, 5, repeated: true, type: At.Srfg.Cits.Beta.Ivim.GlcPart
end

defmodule At.Srfg.Cits.Beta.Ivim.ReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
  field :positionConfidenceEllipse, 3, type: At.Srfg.Cits.Beta.Ivim.PosConfidenceEllipse
  field :altitude, 4, type: At.Srfg.Cits.Beta.Ivim.Altitude
end

defmodule At.Srfg.Cits.Beta.Ivim.PosConfidenceEllipse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :semiMajorConfidence, 1, type: :uint32
  field :semiMinorConfidence, 2, type: :uint32
  field :semiMajorOrientation, 3, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.Altitude do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :altitudeValue, 1, type: :int32
  field :altitudeConfidence, 2, type: At.Srfg.Cits.Beta.Ivim.AltitudeConfidence, enum: true
end

defmodule At.Srfg.Cits.Beta.Ivim.Heading do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :headingValue, 1, type: :uint32
  field :headingConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.Speed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :speedValue, 1, type: :uint32
  field :speedConfidence, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.GlcPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :zone, 0

  field :zoneId, 1, type: :int32
  field :laneNumber, 2, type: :int32
  field :zoneExtension, 3, type: :uint32
  field :zoneHeading, 4, type: :uint32
  field :area, 5, type: At.Srfg.Cits.Beta.Ivim.AreaWrapper, oneof: 0
  field :computedSegment, 6, type: At.Srfg.Cits.Beta.Ivim.ComputedSegment, oneof: 0
  field :segment, 7, type: At.Srfg.Cits.Beta.Ivim.Segment, oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.AreaWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :area, 0

  field :absolutePositions, 2, type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWrapper, oneof: 0

  field :absolutePositionsWithAltitude, 3,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitudeWrapper,
    oneof: 0

  field :deltaPositions, 4, type: At.Srfg.Cits.Beta.Ivim.DeltaPositionWrapper, oneof: 0

  field :deltaPositionsWithAltitude, 5,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePositionWrapper,
    oneof: 0
end

defmodule At.Srfg.Cits.Beta.Ivim.Zone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :area, 0

  field :absolutePositions, 1, type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWrapper, oneof: 0

  field :absolutePositionsWithAltitude, 2,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitudeWrapper,
    oneof: 0

  field :deltaPositions, 3, type: At.Srfg.Cits.Beta.Ivim.DeltaPositionWrapper, oneof: 0

  field :deltaPositionsWithAltitude, 4,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePositionWrapper,
    oneof: 0

  field :computedSegment, 5, type: At.Srfg.Cits.Beta.Ivim.ComputedSegment
  field :segment, 6, type: At.Srfg.Cits.Beta.Ivim.Segment
end

defmodule At.Srfg.Cits.Beta.Ivim.AbsolutePositionWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :absolutePositions, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.AbsolutePosition
end

defmodule At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitudeWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :absolutePositionsWithAltitude, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitude
end

defmodule At.Srfg.Cits.Beta.Ivim.DeltaPositionWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaPositions, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DeltaPosition
end

defmodule At.Srfg.Cits.Beta.Ivim.DeltaReferencePositionWrapper do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaPositionsWithAltitude, 1,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePosition
end

defmodule At.Srfg.Cits.Beta.Ivim.Area do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :absolutePositions, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.AbsolutePosition

  field :absolutePositionsWithAltitude, 2,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitude

  field :deltaPositions, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DeltaPosition

  field :deltaPositionsWithAltitude, 4,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePosition
end

defmodule At.Srfg.Cits.Beta.Ivim.AbsolutePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitude do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latitude, 1, type: :int32
  field :longitude, 2, type: :int32
  field :altitude, 3, type: At.Srfg.Cits.Beta.Ivim.Altitude
end

defmodule At.Srfg.Cits.Beta.Ivim.DeltaPosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaLatitude, 1, type: :int32
  field :deltaLongitude, 2, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.DeltaReferencePosition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deltaLatitude, 1, type: :int32
  field :deltaLongitude, 2, type: :int32
  field :deltaAltitude, 3, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.ComputedSegment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zoneId, 1, type: :int32
  field :laneNumber, 2, type: :int32
  field :laneWidth, 3, type: :uint32
  field :offsetDistance, 4, type: :int32
  field :offsetPosition, 5, type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePosition
end

defmodule At.Srfg.Cits.Beta.Ivim.Segment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :line, 0

  field :absolutePositions, 1, type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWrapper, oneof: 0

  field :absolutePositionsWithAltitude, 2,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitudeWrapper,
    oneof: 0

  field :deltaPositions, 3, type: At.Srfg.Cits.Beta.Ivim.DeltaPositionWrapper, oneof: 0

  field :deltaPositionsWithAltitude, 4,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePositionWrapper,
    oneof: 0

  field :laneWidth, 5, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.Line do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :absolutePositions, 1, repeated: true, type: At.Srfg.Cits.Beta.Ivim.AbsolutePosition

  field :absolutePositionsWithAltitude, 2,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.AbsolutePositionWAltitude

  field :deltaPositions, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.DeltaPosition

  field :deltaPositionsWithAltitude, 4,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.DeltaReferencePosition
end

defmodule At.Srfg.Cits.Beta.Ivim.LayoutContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :layoutId, 1, type: :int32
  field :height, 2, type: :uint32
  field :width, 3, type: :uint32
  field :layoutComponents, 4, repeated: true, type: At.Srfg.Cits.Beta.Ivim.LayoutComponent
end

defmodule At.Srfg.Cits.Beta.Ivim.LayoutComponent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :layoutComponentId, 1, type: :int32
  field :height, 2, type: :uint32
  field :width, 3, type: :uint32
  field :x, 4, type: :uint32
  field :y, 5, type: :uint32
  field :textScripting, 6, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.MapLocationContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :reference, 0

  field :intersection, 1, type: At.Srfg.Cits.Beta.Ivim.IntersectionReferenceID, oneof: 0
  field :roadsegment, 2, type: At.Srfg.Cits.Beta.Ivim.RoadSegmentReferenceID, oneof: 0
  field :parts, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.MlcPart
end

defmodule At.Srfg.Cits.Beta.Ivim.Reference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :intersection, 1, type: At.Srfg.Cits.Beta.Ivim.IntersectionReferenceID
  field :roadsegment, 2, type: At.Srfg.Cits.Beta.Ivim.RoadSegmentReferenceID
end

defmodule At.Srfg.Cits.Beta.Ivim.IntersectionReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.RoadSegmentReferenceID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :region, 1, type: :uint32
  field :id, 2, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.MlcPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zoneId, 1, type: :int32
  field :laneIds, 2, repeated: true, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.RccPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :relevanceZoneIds, 1, repeated: true, type: :int32
  field :roadType, 2, type: At.Srfg.Cits.Beta.Ivim.RoadType, enum: true
  field :laneConfiguration, 3, repeated: true, type: At.Srfg.Cits.Beta.Ivim.LaneInformation
end

defmodule At.Srfg.Cits.Beta.Ivim.LaneInformation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :laneNumber, 1, type: :int32
  field :direction, 2, type: :uint32
  field :validity, 3, type: At.Srfg.Cits.Beta.Ivim.InternationalSignApplicablePeriod
  field :laneType, 4, type: :uint32
  field :laneTypeQualifier, 5, type: At.Srfg.Cits.Beta.Ivim.CompleteVehicleCharacteristics
  field :laneStatus, 6, type: :int32
  field :laneWidth, 7, type: :uint32
  field :detectionZoneIds, 8, repeated: true, type: :int32
  field :relevanceZoneIds, 9, repeated: true, type: :int32
  field :laneCharacteristics, 10, type: At.Srfg.Cits.Beta.Ivim.LaneCharacteristics

  field :laneSurfaceStaticCharacteristics, 11,
    type: At.Srfg.Cits.Beta.Ivim.RoadSurfaceStaticCharacteristics

  field :laneSurfaceDynamicCharacteristics, 12,
    type: At.Srfg.Cits.Beta.Ivim.RoadSurfaceDynamicCharacteristics
end

defmodule At.Srfg.Cits.Beta.Ivim.LaneCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zoneDefinitionAccuracy, 1, type: :int32
  field :existinglaneMarkingStatus, 2, type: :bool
  field :newlaneMarkingColour, 3, type: :int32
  field :laneDelimitationLeft, 4, type: :int32
  field :laneDelimitationRight, 5, type: :int32
  field :mergingWith, 6, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.RoadSurfaceStaticCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :frictionCoefficient, 1, type: :uint32
  field :material, 2, type: :int32
  field :wear, 3, type: :int32
  field :avBankingAngle, 4, type: :int32
end

defmodule At.Srfg.Cits.Beta.Ivim.RoadSurfaceDynamicCharacteristics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :condition, 1, type: :int32
  field :temperature, 2, type: :int32
  field :iceOrWaterDepth, 3, type: :uint32
  field :treatment, 4, type: :uint32
end

defmodule At.Srfg.Cits.Beta.Ivim.RscPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detectionZoneIds, 1, repeated: true, type: :int32
  field :relevanceZoneIds, 2, repeated: true, type: :int32
  field :direction, 3, type: :uint32

  field :roadSurfaceStaticCharacteristics, 4,
    type: At.Srfg.Cits.Beta.Ivim.RoadSurfaceStaticCharacteristics

  field :roadSurfaceDynamicCharacteristics, 5,
    type: At.Srfg.Cits.Beta.Ivim.RoadSurfaceDynamicCharacteristics
end

defmodule At.Srfg.Cits.Beta.Ivim.TcPart do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detectionZoneIds, 1, repeated: true, type: :int32
  field :relevanceZoneIds, 2, repeated: true, type: :int32
  field :direction, 3, type: :uint32
  field :driverAwarenessZoneIds, 4, repeated: true, type: :int32
  field :minimumAwarenessTime, 5, type: :uint32
  field :applicableLanes, 6, repeated: true, type: :int32
  field :layoutId, 7, type: :int32
  field :preStoredlayoutId, 8, type: :int32
  field :text, 9, repeated: true, type: At.Srfg.Cits.Beta.Ivim.Text
  field :data, 10, type: :string
  field :iviType, 11, type: :uint32
  field :laneStatus, 12, type: :int32

  field :vehicleCharacteristics, 13,
    repeated: true,
    type: At.Srfg.Cits.Beta.Ivim.CompleteVehicleCharacteristics
end