defmodule ExApteligent.Trends do

  def trends(data_loc, app_id, token, gateway \\ ApteligentGatewayHttp) do
    {:ok, trends} = gateway.request(data_loc, "/trends/", app_id, token)
    JsonParser.parse trends
  end

  def dau(appId) do
    1_000
  end

  def mau(appId) do
    1_000_000
  end
end
