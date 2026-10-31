# Pet CRUD Application (Java + JDBC)

A menu-driven console app in core Java that manages pet records in a MySQL database using JDBC. You can add, view, list, update and delete pets.

## Features

- Add a pet (ID, name, type, age)
- Find a pet by ID
- List all pets
- Update a pet's name, type and age
- Delete a pet
- Clear messages for each action ("Pet added successfully", "Pet not found" and so on)

## How it is built

```
src/com/itvedant/pet/
├── models/Pet.java              the Pet class: fields, constructors, getters/setters, toString
├── repository/PetDao.java       DAO interface: addPet, updatePet, deletePet, getPetById, getAllPets
├── repository/PetDaoImpl.java   JDBC implementation with PreparedStatement
└── test/PetTest.java            the console menu (Scanner + switch)
```

| Concept | Where |
|---|---|
| DAO pattern (interface + implementation) | `PetDao`, `PetDaoImpl` |
| JDBC: `DriverManager`, `Connection`, `PreparedStatement`, `ResultSet` | `PetDaoImpl` |
| Parameterised queries (safe from SQL injection) | every query uses `?` placeholders |
| OOP: encapsulation, constructors, `toString` | `Pet` |
| Collections (`List`, `ArrayList`) | `getAllPets` |
| User input and menus (`Scanner`, `switch`, `do-while`) | `PetTest` |

## Sample run

```
----- PET CRUD APPLICATION -----
1. Add Pet
2. View Pet
3. View All Pets
4. Update Pet
5. Delete Pet
6. Exit
Enter your choice: 3
Pet [id=1, name=Misty, type=Labrador, age=4]
Pet [id=2, name=Sweety, type=golden, age=5]
```

## Run it

1. Create the database and table: run [`pet_table.sql`](pet_table.sql) in MySQL.
2. Add the [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/) jar to the project's build path (Eclipse: *Build Path → Add External Archives*).
3. Set your MySQL password as an environment variable named `DB_PASSWORD` (the user is `root`, the database is `petdb`).
4. Run `com.itvedant.pet.test.PetTest`.

## Author

Vineetsing Girase · [GitHub](https://github.com/Vineetsing9019)
