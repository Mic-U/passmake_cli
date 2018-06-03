defmodule RandomString do
  def make(characters, passLength) do
    _make([], characters, passLength)
  end

  defp _make(result, _, passLength) when length(result) >= passLength do
    Enum.join(result)
  end

  defp _make(result, characters, passLength) when length(result) < passLength do
    char = String.codepoints(characters)
    |> Enum.take_random(1)
    |> List.first
    _make([char | result], characters, passLength)
  end
end
