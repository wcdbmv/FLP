domains
  surname, phone, city, street, house, apartment = symbol
  address = address(city, street, house, apartment)
  model, color, cost = symbol
  bank, account, sum = symbol

predicates
  subscriber(surname, phone, address)
  car(surname, model, color, cost)
  deposit(surname, bank, account, sum)

  find_surname_city_phone_bank_by_model_color(model, color, surname, city, phone, bank)

clauses
  subscriber("Kerimov", "1111111111", address("Lyubertsy", "Yubileynaya", "17", "2")).
  subscriber("Yugay", "2222222222", address("Lyubertsy", "Yubileynaya", "17b", "18")).
  subscriber("Novikov", "4444444444", address("Moscow", "Armyanskaya", "1", "1")).

  car("Yugay", "Nissan", "Red", "1000000").
  car("Kerimov", "Volvo", "Blue", "1200000").
  car("Novikov", "Nissan", "Red", "1100000").

  deposit("Kerimov", "Sberbank", "0000-0000", "1000000").
  deposit("Novikov", "VTB", "0001-0000", "300000").
  deposit("Yugay", "Sberbank", "0000-0001", "500000").

  find_surname_city_phone_bank_by_model_color(Model, Color, Surname, City, Phone, Bank) :-
    car(Surname, Model, Color, _),
    subscriber(Surname, Phone, address(City, _, _, _)),
    deposit(Surname, Bank, _, _).

goal
  find_surname_city_phone_bank_by_model_color("Nissan", "Red", Surname, City, Phone, Bank).
  %find_surname_city_phone_bank_by_model_color("Volvo", "Blue", Surname, City, Phone, Bank).
  %find_surname_city_phone_bank_by_model_color("Volvo", "Red", Surname, City, Phone, Bank).
