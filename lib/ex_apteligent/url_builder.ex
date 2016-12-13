defmodule ExApteligent.UrlBuilder do

  @defaults [data_loc: :us]
  
  def prepare(path, app_id, options \\ []) do
    options = Keyword.merge(@defaults, options) 
    "https://" <> domain_for_data_loc(options[:data_loc]) <> ":443/v2/" <> path <> "/" <> app_id
  end

  defp domain_for_data_loc(:us) do
    "developers.crittercism.com"
  end
  
  defp domain_for_data_loc(:eu) do
    "developers.eu.crittercism.com"
  end
end
