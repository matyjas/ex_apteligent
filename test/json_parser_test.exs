defmodule JsonParserTest do
  use ExUnit.Case, async: true
  alias ExApteligent.JsonParser
  doctest ExApteligent.JsonParser

  @example_glossary "{
  \"glossary\": {
  \"title\": \"example glossary\",
  \"GlossDiv\": {
  \"title\": \"S\",
  \"GlossList\": {
  \"GlossEntry\": {
  \"ID\": \"SGML\",
  \"SortAs\": \"SGML\",
  \"GlossTerm\": \"Standard Generalized Markup Language\",
  \"Acronym\": \"SGML\",
  \"Abbrev\": \"ISO 8879:1986\",
  \"GlossDef\": {
  \"para\": \"A meta-markup language, used to create markup languages such as DocBook.\",
  \"GlossSeeAlso\": [\"GML\", \"XML\"]
  },
  \"GlossSee\": \"markup\"
  }
  }
  }
  }
  }"
  
  test "json string parsed into map" do
    {:ok, map} = JsonParser.parse(@example_glossary)
    assert map != nil
    assert is_map map
  end	
end
