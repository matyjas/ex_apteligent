defmodule HttpGatewayTest do
  use ExUnit.Case
  alias ExApteligent.HttpGateway
  doctest ExApteligent.HttpGateway

  @moduletag :integration
  
  test "request with bad token should be an :error" do
    {:error, resp} = HttpGateway.request(:us, "trends", "519d53101386202089000007", "token")
  end

  test "there should be an OAuth token available" do
    token = System.get_env "APTELIGENT_TOKEN"
    assert token != nil
  end
end
