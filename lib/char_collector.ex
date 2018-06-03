defmodule CharCollecter do
  def collect do
    getAlphanumerics()
  end

  def collect(useSpecialChars) do
    case useSpecialChars do
      true -> getAlphanumerics() <> getSpecialChars()
      _ -> getAlphanumerics()
    end
  end

  defp getAlphanumerics do
    "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  end

  defp getSpecialChars do
    "!#$%&*+-./=?@_"
  end
end
