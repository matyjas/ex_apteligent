defmodule ExApteligent.Trends do
  alias ExApteligent.HttpGateway
  
  def trends(data_loc, app_id, token, gateway \\ HttpGateway) do
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
