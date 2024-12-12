-module(lesson3_task4).
-export([decode/2]).

decode(Json, Format) when is_binary(Json), is_atom(Format) ->
    ParsedJson = jsx:decode(Json, [return_maps]),
    convert_format(ParsedJson, Format).

convert_format(JsonData, proplist) ->
    jsx:to_proplist(JsonData);
convert_format(JsonData, map) ->
    JsonData.