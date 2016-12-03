defmodule ApteligentTest do
	use ExUnit.Case
	doctest Apteligent

	test "request with no token is invalid" do
		{status, _} = Apteligent.request("", nil, nil)
		assert status == :error
	end
end
