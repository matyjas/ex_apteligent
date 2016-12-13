defmodule ExApteligent.UrlBuilder do

  def prepare(path, app_id) do
    "https://developers.crittercism.com:443/v2/" <> path <> "/" <> app_id
  end
end
