defmodule RandomStringTest do
  use ExUnit.Case
  doctest RandomString

  test "Should be length 10" do
    assert RandomString.make("a", 10) == "aaaaaaaaaa"
  end
end
