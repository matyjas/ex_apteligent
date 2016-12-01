defmodule ApteligentTest do
	use ExUnit.Case
	doctest Apteligent

	test "request with no token is invalid" do
		{status, _} = Apteligent.request("", %Apteligent{})
		assert status == :invalid
	end
end
