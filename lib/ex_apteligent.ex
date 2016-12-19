defmodule ExApteligent do
  alias ExApteligent.HttpGateway
	@moduledoc """
	The parent module for this Apteligent client library, it
  wraps implemented API endpoints as sub-modules. 
  see `ExApteligent.Trends`
  """
  
  defmodule Trends do
		@moduledoc """
    Supports accessing values from Apteligent's trends endpoints
    """
		@doc """
		Returns massive map of lots of trends information
    """
    def trends(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends", app_id, token, options)
    end
		@doc """
    Returns map containing daily active users count
    """
    def dau(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends/dau", app_id, token, options)
    end
		@doc """
		Returns map containing monthly active users count
    """
    def mau(app_id, token, gateway \\ HttpGateway, options \\ []) do
      gateway.request("trends/mau", app_id, token, options)
    end
  end
  
end
