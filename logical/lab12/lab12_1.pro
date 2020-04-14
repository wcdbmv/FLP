domains
  surname, name, university, faculty, departament, group = string

predicates
  student(surname, name, university, faculty, departament, group)

clauses
  student("Kerimov", "Ahmed", "BMSTU", "IU", "IU7", "IU7-64b").
  student("Novikov", "Mikael", "BMSTU", "IU", "IU7", "IU7-64b").
  student("Yarotskiy", "Danil", "BMSTU", "IU", "IU7", "IU7-61b").
  student("Kerimov", "Ahmed", "MSU", "CMC", "SE", "1").
  student("Ivanov", "Ivan", "MSU", "CMC", "SE", "1").
  student("Ivanov", "Petr", "MSU", "CMC", "SE", "2").
  student("Yugay", "Konstantin", "HSE", "CS", "SE", "BPI-175").
  student("Volkova", "Anna", "DA RFM", "IR", "IR", "1").

goal
  student(Surname, Name, "BMSTU", Faculty, Departament, Group).
  %student("Kerimov", "Ahmed", University, Faculty, Departament, Group).
  %student(Surname, Name, University, Faculty, "SE", Group).
