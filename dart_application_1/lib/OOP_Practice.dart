// ignore_for_file: file_names

import 'dart:math';

// Program to generate random custom length password using OOP
class GeneratePassword {
  static String generateRandomPassword(int len) {
    List<String> alphabets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    List<String> specialCharacters = ["!", "@", "#", "\$", "%", "^", "&", "*"];
    List<String> password = [];
    for (int i = 1; i <= len; i++) {
      int randNum = Random().nextInt(3);
      if (randNum == 0) {
        password.add(alphabets[Random().nextInt(alphabets.length)]);
      }
      else if (randNum == 1) {
        password.add(numbers[Random().nextInt(numbers.length)].toString());
      }
      else if (randNum == 2) {
        password.add(specialCharacters[Random().nextInt(specialCharacters.length)]);
      }  
    }
    return password.join();
  }
}


// Program to create a Laptop class with properties and print those details
class Laptop {
  int? id;
  String? name;
  int? ram;

  void displayInfo() {
    print("Laptop with id $id is named $name and has $ram GB RAM.");
  }
}

// Program to create class House with a constructor and method to print details.
class House {
  int houseID;
  String houseName;
  int housePrice;

  House(this.houseID, this.houseName, this.housePrice);

  void displayInfo() {
    print("House with house ID $houseID is named $houseName and costs Rs $housePrice.");
  }
}



// Program to create an enum class for gender and print all values
enum Gender {male, female, hemale, shemale}


// Program to create class Animal and another class Cat that extends Animal and adds new properties.
abstract class Animal {
  String name;
  String color;

  Animal(this.name, this.color);

  void printInfo() {
    print("Name is $name.");
    print("Color is $color.");
  }
}

class Cat extends Animal {
  String nickName;

  Cat(super.name, super.color, this.nickName);

  @override
  void printInfo() {
    print("Cat's name is $name");
    print("Cat's fur is $color");
    print("Cat's nickname is $nickName");
  }
}


void main() {
  print("Password : ${GeneratePassword.generateRandomPassword(10)}");


  print("-" * 60);


  Laptop plapplop = Laptop();
  plapplop.id = 80085;
  plapplop.name = "Yudhisthira";
  plapplop.ram = 32;
  plapplop.displayInfo();


  print("-" * 60);


  House house = House(675367, "Rekha House", 6700000000);
  house.displayInfo();


  print("-" * 60);


  for (Gender x in Gender.values) {
    print(x);
  }

}