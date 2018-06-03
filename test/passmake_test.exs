defmodule PassmakeTest do
  use ExUnit.Case
  doctest Passmake

  test "set only length" do
    assert Passmake.main(["-l", "10"]) == :ok
  end

  test "set --special" do
    assert Passmake.main(["-l", "10", "-s"]) == :ok
  end

  test "Passmake.parseArgs set --help" do
    assert Passmake.parseArgs(["--help"]) == :help
  end
  test "Passmake.parseArgs set -h" do
    assert Passmake.parseArgs(["-h"]) == :help
  end
  test "Passmake.parseArgs set -l without number" do
    assert Passmake.parseArgs(["-l"]) == :help
  end
  test "Passmake.parseArgs set -l" do
    assert Passmake.parseArgs(["-l", "10"]) == 10
  end
  test "Passmake.parseArgs set --length" do
    assert Passmake.parseArgs(["--length", "10"]) == 10
  end

  test "Passmake.parseArgs set -l and -s" do
    assert Passmake.parseArgs(["-l", "10", "-s"]) == [length: 10, special: true]
  end
end
