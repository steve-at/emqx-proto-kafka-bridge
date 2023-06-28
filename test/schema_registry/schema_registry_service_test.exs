defmodule SchemaRegistryServiceTest do
  use ExUnit.Case
  require Logger

  def get_schema_registry_response() do
    File.read!("test/resources/schema_registry_response")
  end

  def generate_encoded_message() do
    proto = %At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer{
      trajectory_id: "test",
      timestamp: 0,
      source: "asd",
      owner: "",
      tags: %{},
      locations: [
        %At.Srfg.Flowmotion.Trajectories.Proto.Location{
          t: 1,
          x: 2.0,
          y: 3.0,
          z: 4,
          tags: %{},
          additional_numerics: %{},
          time_series_fragments: %{},
          __unknown_fields__: []
        }
      ],
      trace: nil,
      __unknown_fields__: []
    }

    At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer.encode(proto)
  end

  test "generating proto is working" do
    encoded = generate_encoded_message()
    decoded = At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer.decode(encoded)
    new_encoded = At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer.encode(decoded)
    assert encoded == new_encoded
    # assert generate_encoded_message()
  end

  test "trying to decode messages does not raise an exception" do
    encoded = generate_encoded_message()
    # using the wrong schema
    {status, _} =
      ProtoKafkaBridge.Core.try_decode(
        "At.Srfg.Flowmotion.Trajectories.Proto.Location",
        encoded
      )

    assert status == :error

    {status, _} =
      ProtoKafkaBridge.Core.try_decode(
        "At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer",
        encoded
      )

    assert status == :ok
  end

  test "finding a proper schema from multiple ones works" do
    encoded = generate_encoded_message()

    canidates = [
      "At.Srfg.Flowmotion.Trajectories.Proto.Location",
      "At.Srfg.Flowmotion.Trajectories.Proto.LocationsContainer",
      "At.Srfg.Flowmotion.Trajectories.Proto.Value"
    ]

    {status, decoded} =
      ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.find_schema_from_canidates(
        canidates,
        encoded
      )

    assert status == :ok
  end

  test "finding the proper proto Message works" do
    response = get_schema_registry_response()

    {:ok, canidates, id} =
      ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.get_proto_schemas_for_topic(
        "mdi-shared-locations",
        %{body: response}
      )

    assert length(canidates) == 6
  end

  test "generating a shema prefix is working" do
    response = get_schema_registry_response()

    {:ok, canidates, id} =
      ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.get_proto_schemas_for_topic(
        "mdi-shared-locations",
        %{body: response}
      )
  end

  test "generating a prefix is working" do
    response = get_schema_registry_response()

    {schema, prefix} =
      ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.get_schema_prefix(
        "mdi-shared-locations",
        %{body: response},
        generate_encoded_message()
      )
    assert prefix == <<0, 0, 0, 0, 3, 0>>
  end
  test "generating a prefix is working second try" do
    response = get_schema_registry_response()
    srem = %At.Srfg.Cits.Beta.Srem.SREM{header: nil, srm: nil, __unknown_fields__: []}
    {schema, prefix} =
      ProtoKafkaBridge.SchemaRegistry.SchemaRegistryService.get_schema_prefix(
        "cits-srem-value",
        %{body: response},
        At.Srfg.Cits.Beta.Srem.SREM.encode(srem)
      )
    assert prefix == <<0, 0, 0, 0, 4, 0>>
  end
end
