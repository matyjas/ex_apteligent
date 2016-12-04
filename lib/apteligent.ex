defmodule ApteligentClient do
	@callback request(atom , String.t, String.t, String.t) :: any
end

