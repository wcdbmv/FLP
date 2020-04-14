domains
  surname, name, city, street, house, phone = string

predicates
  subscriber(surname, name, city, street, house, phone)

clauses
  subscriber("Kerimov", "Ahmed", "Lyubertsy", "Yubileynaya", "17", "1111111111").
  subscriber("Yugay", "Konstantin", "Lyubertsy", "Yubileynaya", "17b", "2222222222").
  subscriber("Ivanov", "Ivan", "Moscow", "Maroseyka", "12", "3333333333").
  subscriber("Novikov", "Mikael", "Moscow", "Armyanskaya", "1", "4444444444").
  subscriber("Ivanov", "Oleg", "Moscow", "Malaya Bronitsa", "4", "5555555555").

goal
  subscriber(Surname, Name, City, Street, House, "1111111111").
  %subscriber("Ivanov", Name, City, Street, House, Phone).
