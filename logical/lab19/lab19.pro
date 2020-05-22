domains
  elements = integer*

predicates
  length(elements List, integer Len, integer CurLen)
  sum(elements List, integer Sum, integer CurSum)
  sumOdd(elements List, integer Sum, integer CurSum)

clauses
  % длина списка
  length([], Len, Len) :- !.
  length([_|T], Len, PrevLen) :- CurLen = PrevLen + 1, length(T, Len, CurLen).

  % сумма элементов списка
  sum([], Sum, Sum) :- !.
  sum([H|T], Sum, PrevSum) :- CurSum = PrevSum + H, sum(T, Sum, CurSum).

  % сумма элементов списка на нечётных позициях
  sumOdd([], Sum, Sum) :- !.
  sumOdd([_|[]], Sum, Sum) :- !.
  sumOdd([_, N|T], Sum, PrevSum) :- CurSum = PrevSum + N, sumOdd(T, Sum, CurSum).

goal
  length([], Len, 0).                  % Len = 0
  %length([1], Len, 0).                % Len = 1
  %length([1, 2, 3], Len, 0).          % Len = 3
  %sum([], Sum, 0).                    % Sum = 0
  %sum([1], Sum, 0).                   % Sum = 1
  %sum([1, 2, 3], Sum, 0).             % Sum = 6
  %sumOdd([], Sum, 0).                 % Sum = 0
  %sumOdd([1], Sum, 0).                % Sum = 0
  %sumOdd([1, 2, 3, 4, 5, 6], Sum, 0). % Sum = 12
