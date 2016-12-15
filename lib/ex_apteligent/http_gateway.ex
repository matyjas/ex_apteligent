defmodule ExApteligent.HttpGateway do
  import ExApteligent.UrlBuilder, only: [prepare: 3]
  alias HTTPotion.Response
  
  @behaviour ApteligentGateway
  def request(data_loc, path, app_id, token) do
    url = prepare(path, app_id, data_loc: data_loc)
    HTTPotion.get(url, [headers: ["Authorization": "Bearer " <> token]])
    |> make_presentable
  end

  defp make_presentable(resp = %Response{status_code: 200}) do
    {:ok, resp.body}
  end

  defp make_presentable(%Response{status_code: status_code}) do
    {:error, status_code}
  end
end

