predicates
  factorial(integer, integer)
  factorial_rec(integer, integer, integer, integer)

  fib(integer, integer)
  fib_rec(integer, integer, integer, integer)

clauses
  factorial(N, F) :- factorial_rec(N, F, 1, 1).
  factorial_rec(N, F, N, F) :- !.
  factorial_rec(N, F, N2, F2) :-
    Tmp_N = N2 + 1,
    Tmp_F = F2 * Tmp_N,
    factorial_rec(N, F, Tmp_N, Tmp_F).

  fib(N, Res) :- fib_rec(N, Res, 1, 1).
  fib_rec(1, Res, _, Res) :- !.
  fib_rec(N, Res, N1, N2) :-
    Tmp_N = N - 1,
    Tmp_N2 = N1 + N2,
    fib_rec(Tmp_N, Res, N2, Tmp_N2).

goal
  fib(3, Result).
