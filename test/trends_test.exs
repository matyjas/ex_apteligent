defmodule TrendsTest do
	use ExUnit.Case
	doctest Trends

	test "trends has data" do
		{:ok, data} = Trends.trends(:us, "app-1", "token-2")
		assert data != nil
	end

end
