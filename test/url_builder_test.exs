defmodule UrlBuilderTest do
  use ExUnit.Case, async: true
  alias ExApteligent.UrlBuilder
  doctest ExApteligent.UrlBuilder

  test "defaults to appropriate domain name for North America" do
    url = UrlBuilder.prepare("trends","app-id-1")
    assert String.starts_with?(url, "https://")
    assert String.starts_with?(url, "https://developers.crittercism.com")
  end

  test "uses appropriate domain name when Data Location is Europe" do
    url = UrlBuilder.prepare("trends/dau","app-id-2", data_loc: :eu)
    assert String.starts_with?(url, "https://developers.eu.crittercism.com")
  end

  # Use appropriate base URL with respect to the Data Location of your application: North America (developers.crittercism.com), Europe (developers.eu.crittercism.com).
end
