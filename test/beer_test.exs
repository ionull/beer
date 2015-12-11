defmodule BeerTest do
  use ExUnit.Case
  doctest Beer

  test "beer got" do
    c = Beer.count(10)
    assert c == 15
  end
end
