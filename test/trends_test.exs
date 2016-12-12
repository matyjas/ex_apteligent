defmodule TrendsTest do
  use ExUnit.Case
  alias ExApteligent.Trends
  doctest ExApteligent.Trends

  test "trends has data" do
    {:ok, data} = Trends.trends(:us, "app-1", "token-2")
    assert data != nil
  end
end
