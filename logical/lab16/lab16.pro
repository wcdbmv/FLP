domains
  name = symbol.

predicates
  father(name, name)
  mother(name, name)
  ancestor(name, name, name, name,name)

clauses
  father(azamat, ashur).
  father(evgeniy, aleksandr).
  father(aleksandr, nikolay).
  father(viktoria, enokentiy).
  father(ashur, petya).
  father(ekaterina, anton).

  mother(azamat, ekaterina).
  mother(evgeniy, viktoria).
  mother(ashur, tanya).
  mother(viktoria, anzhela).
  mother(aleksandr, avdotia).
  mother(ekaterina, natasha).

  ancestor(Name, GrandMotherM, GrandFatherM, GrandMotherF, GrandFatherF) :-
    mother(Name, Mother), mother(Mother, GrandMotherM), father(Mother, GrandFatherM),
    father(Name, Father), mother(Father, GrandMotherF), father(Father, GrandFatherF).

goal
  ancestor(azamat, GM, GF, GMM, GFM).
