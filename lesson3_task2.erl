-module(lesson3_task2).
-export([words/1]).

words(BinText) when is_binary(BinText) ->
    Words = binary:split(BinText, <<" ">>, [global]),
    [Word || Word <- Words, Word =/= <<>>].  % Фільтруємо порожні бінарні сегменти.