domains
  name, lastName, phoneNumber, city, street,
  brend, color, bank, bankAccount = symbol.
  flat, price, ownPrice, summ, house, sumVar = integer.
  address = adr(city, street, house, flat).
  clause = autos(name, price);
           building(name, price);
           ship(name, price);
           area(name, price).

predicates
  phoneBook(lastName, phoneNumber, address)
  investors(lastName, bank, bankAccount, summ)
  owner(lastName, clause)
  ownership(lastName, name, price)
  clauseProperty(clause, name, price)

clauses
  clauseProperty(autos(Name, Price),OwnName, OwnPrice) :- OwnName=Name, OwnPrice=Price.
  clauseProperty(ship(Name, Price),OwnName, OwnPrice) :- OwnName=Name, OwnPrice=Price.
  clauseProperty(building(Name, Price),OwnName, OwnPrice) :- OwnName=Name, OwnPrice=Price.
  clauseProperty(area(Name, Price),OwnName, OwnPrice) :- OwnName=Name, OwnPrice=Price.

  phoneBook(sanginov, "6", adr(moscow, mayakovskaya, 6, 26)).
  phoneBook(pupkin, "5", adr(moscow, mayakovskaya, 7, 27)).
  phoneBook(ivanov, "7", adr(urengoy, mayakovskaya, 8, 28)).
  phoneBook(ivanov, "8", adr(moscow, tulchinskaya, 8, 28)).

  investors(sanginov, sber, "1588", 20).
  investors(pupkin, tinkoff, "1088", 12).
  investors(ivanov, alpha, "1588", 19).
  investors(ivanov, otkritie, "1588", 19).

  owner(sanginov, autos(mersedesbenssclass, 55)).
  owner(ivanov, ship(mssclass, 67)).
  owner(ivanov, autos(mercedes, 21)).
  owner(sanginov, building(moscowCity, 160)).
  owner(sanginov, area(derbentskiy, 12203)).
  owner(ivanov, area(moscowskiy, 120)).
  owner(petrov, area(hmelnick, 510)).

  ownership(Lastname, OwnName, OwnPrice) :-
    owner(Lastname, CLAUSE),
    clauseProperty(CLAUSE, OwnName, OwnPrice).

goal
  ownership(petrov, OwnName, OwnPrice).
  % ownership(sanginow, OwnName, OwnPrice).
