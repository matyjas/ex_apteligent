defmodule Apteligent do
	defstruct [:data_loc, :token]

	def request(_, %Apteligent{token: nil}) do
		{:invalid,
		 "we need an OAuth token. Oass :stub for testing"}
		end
	
	def request(path, %Apteligent{token: :stub}) do
		Apteligent.Stub.request(path)
	end
	
end

# Use appropriate base URL with respect to the Data Location of your application: North America (developers.crittercism.com), Europe (developers.eu.crittercism.com).
