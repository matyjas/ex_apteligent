Code.require_file "fakes/trends_response.exs", __DIR__
ExUnit.configure exclude: [:integration]
ExUnit.start()
