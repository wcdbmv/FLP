domains
  name = symbol

predicates
  parent(name, name)
  grandchild(name, name)
  has_child(name)

clauses
  parent(tom, ann).
  parent(tom, mike).
  parent(mary, mike).
  parent(mike, sue).
  parent(mike, john).
  parent(mike, nick).
  parent(john, jane).
  parent(john, jim).

  grandchild(X, Z) :- parent(Y, X), parent(Z, Y).
  has_child(X) :- parent(X, Y).

goal
  grandchild(nick, tom).
  %has_child(john).
  %has_child(jane).
