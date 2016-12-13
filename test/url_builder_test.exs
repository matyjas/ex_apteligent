defmodule UrlBuilderTest do
  use ExUnit.Case
  alias ExApteligent.UrlBuilder
  doctest ExApteligent.UrlBuilder

  test "defaults to appropriate base URL for North America" do
    url = UrlBuilder.prepare("trends","app-id-1")
    assert String.starts_with?(url, "https://")
  end
end
