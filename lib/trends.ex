defmodule ExApteligent.Trends do

  def trends(data_loc, app_id, token, apteligent_client \\ ApteligentClientHttp) do
    apteligent_client.request(data_loc, "/trends/", app_id, token)
  end

  def dau(appId) do
    1_000
  end

  def mau(appId) do
    1_000_000
  end
end
