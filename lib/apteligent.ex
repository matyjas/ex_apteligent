defmodule Apteligent do


	def request(_, nil, _) do
		{:error,
		 "we need an token or pass :stub for testing"}
		end
	
	def request(path, :stub, _) do
		Apteligent.Stub.request(path)
	end
	
end

# Use appropriate base URL with respect to the Data Location of your application: North America (developers.crittercism.com), Europe (developers.eu.crittercism.com).
