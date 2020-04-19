domains
  surname, phone, city, street, house, apartment = symbol
  address = address(city, street, house, apartment)
  model, color, cost = symbol
  bank, account, sum = symbol

predicates
  subscriber(surname, phone, address)
  car(surname, model, color, cost)
  deposit(surname, bank, account, sum)

  find_car_by_phone(phone, surname, model, cost)
  find_model_by_phone(phone, model)
  find_bank_street_by_surname_city(surname, city, bank, street)

clauses
  subscriber("Kerimov", "1111111111", address("Lyubertsy", "Yubileynaya", "17", "2")).
  subscriber("Yugay", "2222222222", address("Lyubertsy", "Yubileynaya", "17b", "18")).
  subscriber("Ivanov", "3333333333", address("Moscow", "Maroseyka", "12", "5")).
  subscriber("Novikov", "4444444444", address("Moscow", "Armyanskaya", "1", "1")).
  subscriber("Ivanov", "5555555555", address("Moscow", "Malaya Bronitsa", "4", "3")).

  car("Yugay", "Nissan", "Red", "1000000").
  car("Yugay", "Volvo", "Blue", "1200000").
  car("Novikov", "Nissan", "Green", "1100000").

  deposit("Kerimov", "Sberbank", "0000-0000", "1000000").
  deposit("Kerimov", "VTB", "0001-0000", "300000").
  deposit("Yugay", "Sberbank", "0000-0001", "500000").

  find_car_by_phone(Phone, Surname, Model, Cost) :-
    subscriber(Surname, Phone, _),
    car(Surname, Model, _, Cost).

  find_model_by_phone(Phone, Model) :- find_car_by_phone(Phone, _, Model, _).

  find_bank_street_by_surname_city(Surname, City, Bank, Street) :-
    subscriber(Surname,_, address(City, Street, _, _)),
    deposit(Surname, Bank, _, _).

goal
  find_car_by_phone("2222222222", Surname, Model, Cost).
  %find_model_by_phone("2222222222", Model).
  %find_bank_street_by_surname_city("Kerimov", "Lyubertsy", Bank, Street).
