-module(lesson3_task3).
-export([split/2]).

split(BinText, Separator) when is_binary(BinText), is_binary(Separator) ->
    binary:split(BinText, Separator, [global]).