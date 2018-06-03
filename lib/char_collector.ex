defmodule CharCollecter do
  def collect do
    getAlphanumerics()
  end

  def collect(useSpecialChars) do
    getAlphanumerics() <> getSpecialChars()
  end

  def getAlphanumerics do
    "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  end

  def getSpecialChars do
    "!#$%&*+-./=?@_"
  end
end
