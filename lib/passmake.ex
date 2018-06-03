defmodule Passmake do
  @moduledoc """
  Main Module.
  """

  def main(argv) do
    parseArgs(argv)
    |> process
  end

  def parseArgs(argv) do
    parse = OptionParser.parse(argv,
                                switches: [help: :boolean, length: :integer, special: :boolean],
                                aliases: [h: :help, l: :length, s: :special])
    case parse do
      {[help: true], _, _}
        -> :help
      {[length: length, special: useSpecialChars], _, _}
        -> [length: length, special: useSpecialChars]
      {[length: length], _, _}
        -> length
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: passmake --length <length>
    """

    System.halt(0)
  end

  def process([length: length, special: useSpecialChars]) do
    characters = CharCollecter.collect(useSpecialChars)
    IO.puts RandomString.make(characters, length)
  end

  def process(length) do
    characters = CharCollecter.collect()
    IO.puts RandomString.make(characters, length)
  end

end
