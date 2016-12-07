defmodule JsonParser do

	def parse(json) do
		JSX.decode json
	end
end
