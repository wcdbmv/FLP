domains
  elements = integer*

predicates
  greater(elements List, integer Num, elements Res)
  oddList(elements List, elements Res)
  delFirst(elements List, integer Num, elements Res)
  del(elements List, integer Num, elements Res)
  member(integer X, elements List)
  makeSet(elements List, elements Set)

clauses
  % 1. Список чисел больших Num
  greater([], _, []) :- !.
  greater([H|T], Num, [H|T2]) :- H > Num, !, greater(T, Num, T2).
  greater([_|T], Num, Res) :- greater(T, Num, Res).

  % 2. Список чисел на нечетных позициях
  oddList([], []) :- !.
  oddList([_], []) :- !.
  oddList([_, N|T], [N|T2]) :- oddList(T, T2).

  % 3.1. Удаление первого вхождения числа в список
  delFirst([], _, []) :- !.
  delFirst([X|T], X, T) :- !.
  delFirst([Y|T], X, [Y|T2]) :- delFirst(T, X, T2).

  % 3.2. Удаление всех вхождений числа в список
  del([], _, []) :- !.
  del([H|T], Num, [H|T2]) :- H <> Num, !, del(T, Num, T2).
  del([_|T], Num, Res) :- del(T, Num, Res).

  % 4. Преобразовать список в множество
  member(X, [X|_]) :- !.
  member(X, [_|T]) :- member(X, T).

  makeSet([], []) :- !.
  makeSet([H|T], T2) :- member(H, T), !, makeSet(T, T2).
  makeSet([H|T], [H|T2]) :- makeSet(T, T2).

goal
  greater([], 3, Res).                      % Res = []
  %greater([1, 2, 3], 3, Res).              % Res = []
  %greater([1, 2, 3], 0, Res).              % Res = [1, 2, 3]
  %greater([1, 2, 3, 4, 5], 3, Res).        % Res = [4, 5]
  %oddList([], Res).                        % Res = []
  %oddList([1, 2, 3, 4, 5], Res).           % Res = [2, 4]
  %delFirst([], 3, Res).                    % Res = []
  %delFirst([1, 2, 3, 4, 5], 9, Res).       % Res = [1, 2, 3, 4, 5]
  %delFirst([1, 2, 3, 4, 3, 3, 5], 3, Res). % Res = [1, 2, 4, 3, 3, 5
  %del([], 3, Res).                         % Res = []
  %del([1, 2, 3, 4, 5], 9, Res).            % Res = [1, 2, 3, 4, 5]
  %del([1, 2, 3, 4, 3, 3, 5], 3, Res).      % Res = [1, 2, 4, 5]
  %makeSet([], Set).                        % Set = []
  %makeSet([1, 2, 3, 4, 5], Set).           % Set = [1, 2, 3, 4, 5]
  %makeSet([1, 1, 1, 2, 3], Set).           % Set = [1, 2, 3]
