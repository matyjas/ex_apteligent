defmodule ExApteligent.HttpGateway do
  alias HTTPotion.Response
  
  @behaviour ExApteligent.Gateway
  def request(data_loc, path, app_id, token) do
    url = ExApteligent.UrlBuilder.prepare(path, app_id, data_loc: data_loc)
    HTTPotion.get(url, [headers: ["Authorization": "Bearer " <> token]])
    |> make_presentable
  end

  defp make_presentable(%Response{ status_code: 200, body: body}) do
    ExApteligent.JsonParser.parse body
  end

  defp make_presentable(%Response{status_code: status_code}) do
    {:error, status_code}
  end
end

