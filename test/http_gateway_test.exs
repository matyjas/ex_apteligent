defmodule HttpGatewayTest do
  use ExUnit.Case, async: true
  alias ExApteligent.HttpGateway
  doctest ExApteligent.HttpGateway

  @moduletag :integration
  
  test "request with bad token should be an :error" do
    {status, _} = HttpGateway.request(:us, "trends", "519d53101386202089000007", "token")
    assert status == :error
  end

  test "there should be an OAuth token available" do
    token = System.get_env "APTELIGENT_TOKEN"
    assert token != nil
  end

  test "request with good token should be :ok" do
    token = System.get_env("APTELIGENT_TOKEN")
    {status, _} = HttpGateway.request(:us, "trends", "519d53101386202089000007", token)
    assert status == :ok
  end
end
