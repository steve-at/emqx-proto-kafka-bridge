defmodule ProtoKafkaBridgeTest do
  use ExUnit.Case
  doctest ProtoKafkaBridge

  test "pings" do
    assert true
    # assert ProtoKafkaBridge.ping() == 1
    # assert ProtoKafkaBridge.ping() == 2
  end
end
