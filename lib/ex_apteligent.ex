defmodule ExApteligent do
  alias ExApteligent.HttpGateway
  
  defmodule Trends do
    def trends(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends", app_id, token, options)
    end

    def dau(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends/dau", app_id, token, options)
    end

    def mau(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends/mau", app_id, token, options)
    end
  end
  
end
