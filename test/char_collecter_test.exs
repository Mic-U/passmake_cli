defmodule CharCollectorTest do
  use ExUnit.Case
  doctest CharCollecter

  test "get Alphanumerics" do
    assert CharCollecter.collect == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  end

  test "get Alphanumerics too" do
    assert CharCollecter.collect(false) == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  end

  test "get Alphanumerics and Special characters" do
    assert CharCollecter.collect(true) == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!#$%&*+-./=?@_"
  end
end
