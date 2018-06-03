defmodule Passmake do
  @moduledoc """
  Main Module.
  """

  def main(argv) do
    parseArgs(argv)
    |> process
  end

  def parseArgs(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])
    case parse do
      {[help: true], _, _}
        -> :help
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: passmake --length <length>
    """

    System.halt(0)
  end
end
