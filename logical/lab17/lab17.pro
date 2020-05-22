predicates
  max_of_two_a(integer, integer, integer)
  max_of_two_b(integer, integer, integer)

  max_of_three_a(integer, integer, integer, integer)
  max_of_three_b(integer, integer, integer, integer)

clauses
  max_of_two_a(A, B, A) :- A >= B.
  max_of_two_a(A, B, B) :- B > A.

  max_of_two_b(A, B, A) :- A >= B, !.
  max_of_two_b(_, B, B).

  max_of_three_a(A, B, C, A) :- A >= B, A >= C.
  max_of_three_a(A, B, C, B) :- B > A, B >= C.
  max_of_three_a(A, B, C, C) :- C > A, C > B.

  max_of_three_b(A, B, C, A) :- A >= B, A >= C, !.
  max_of_three_b(_, B, C, B) :- B >= C, !.
  max_of_three_b(_, _, C, C).

goal
  max_of_three_b(3, 3, 3, Result).
