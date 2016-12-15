defmodule ExApteligent.Trends do
  alias ExApteligent.HttpGateway
  
  def trends(data_loc, app_id, token, gateway \\ HttpGateway) do
    req(data_loc, "trends", app_id, token, gateway)
  end

  def dau(data_loc, app_id, token, gateway \\ HttpGateway) do
    req(data_loc, "trends/dau", app_id, token, gateway)
  end

  def mau(data_loc, app_id, token, gateway \\ HttpGateway) do
    req(data_loc, "trends/mau", app_id, token, gateway)
  end

  defp req(data_loc, path, app_id, token, gateway) do
    {:ok, data} = gateway.request(data_loc, path, app_id, token)
    JsonParser.parse data
  end
end
