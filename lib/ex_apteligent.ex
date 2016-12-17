defmodule ExApteligent do
  alias ExApteligent.HttpGateway
  
  defmodule Trends do
    def trends(data_loc, app_id, token, gateway \\ HttpGateway) do
      gateway.request(data_loc, "trends", app_id, token)
    end

    def dau(data_loc, app_id, token, gateway \\ HttpGateway) do
      gateway.request(data_loc, "trends/dau", app_id, token)
    end

    def mau(data_loc, app_id, token, gateway \\ HttpGateway) do
      gateway.request(data_loc, "trends/mau", app_id, token)
    end
  end
  
end
