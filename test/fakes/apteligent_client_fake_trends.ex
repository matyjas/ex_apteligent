defmodule Fakes.ApteligentClientFakeTrends do
  @behaviour ApteligentClient
  def request(_, _, _, _) do
    {:ok, fake_response()} 
  end

  defp fake_response do
    ""
  end
end
