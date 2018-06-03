defmodule PassmakeTest do
  use ExUnit.Case
  doctest Passmake

  test "greets the world" do
    assert Passmake.hello() == :world
  end
end
