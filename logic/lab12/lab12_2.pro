domains
  surname, name, university, faculty, departament, group = string

predicates
  student(surname, name, university, faculty, departament, group)
  in_one_group(surname, name, surname, name)
  in_one_university(surname, name, surname, name)

clauses
  student("Kerimov", "Ahmed", "BMSTU", "IU", "IU7", "IU7-64b").
  student("Novikov", "Mikael", "BMSTU", "IU", "IU7", "IU7-64b").
  student("Yarotskiy", "Danil", "BMSTU", "IU", "IU7", "IU7-61b").
  student("Kerimov", "Ahmed", "MSU", "CMC", "SE", "1").
  student("Ivanov", "Ivan", "MSU", "CMC", "SE", "1").
  student("Ivanov", "Petr", "MSU", "CMC", "SE", "2").
  student("Yugay", "Konstantin", "HSE", "CS", "SE", "BPI-175").
  student("Volkova", "Anna", "DA RFM", "IR", "IR", "1").

  in_one_group(Surname1, Name1, Surname2, Name2) :-
    student(Surname1, Name1, University, Faculty, Departament, Group),
    student(Surname2, Name2, University, Faculty, Departament, Group).

  in_one_university(Surname1, Name1, Surname2, Name2) :-
    student(Surname1, Name1, University, _, _, _),
    student(Surname2, Name2, University, _, _, _).

goal
  in_one_group("Kerimov", "Ahmed", "Novikov", "Mikael").
  %in_one_group("Kerimov", "Ahmed", "Yarotskiy", "Danil").
  %in_one_university("Kerimov", "Ahmed", "Yarotskiy", "Danil").
