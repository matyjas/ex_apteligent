defmodule ExApteligent.Gateway do
  @callback request(String.t, String.t, String.t, {atom, atom}) :: any
end

