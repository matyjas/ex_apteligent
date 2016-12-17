defmodule TrendsTest do
  use ExUnit.Case, async: true
  alias ExApteligent.Trends
  doctest ExApteligent.Trends

  defmodule FakeTrendsGateway do
    @behaviour ApteligentGateway
    def request(_, _, _, _) do
      Fakes.TrendsResponse.sample()
    end
  end
  
  test "trends has data" do
    {:ok, trends} = Trends.trends(:us, "app-1", "token-2", FakeTrendsGateway)
    assert trends != nil
  end

  test "trends come back as map" do
    trendsTuple = Trends.trends(:us, "app-1", "token-2", FakeTrendsGateway)
    assert is_tuple trendsTuple
    {:ok, trendsMap} = trendsTuple
    refute is_tuple trendsMap
    assert is_map trendsMap
  end
end
