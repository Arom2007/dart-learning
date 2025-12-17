// ignore_for_file: file_names

// Inheritance in Dart
// Inheritance is a sharing of behaviour between two classes.
// It allows you to define a class that extends the functionality of another class.
// The extend keyword is used for inheriting from parent class.
/* 
Syntax:
class ParentClass {
  // ParentClass code
}

class ChildClass extends ParentClass {
  // ChildClass code
}
*/

class Person {
  String? name;
  int? age;

  void display() {
    print("Name : $name");
    print("Age : $age");
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;

  void displayStudent() {
    print("School Name : $schoolName");
    print("School Address : $schoolAddress");
  }
}


// Types of Inheritance in Dart
// Single Inheritance: A class inherits another class.
// Multilevel Inheritance: ClassB inherits ClassA and ClassC inherits ClassB.
// Hierarchical Inheritance: Both ClassB and ClassC inherit ClassA.
// Multiple Inheritance: One class has multiple parent classes. It is not supported by dart.


// Inheritance of Constructors in Dart
class Laptop {
  String? name;
  String? color; 
  // Constructor 
  Laptop(this.name, this.color) {
    print("Laptop constructor");
  }
}

class McBook extends Laptop{
  int? year;
  
  //Constructor
  McBook(String super.name, String super.color, this.year) {
    print("Mac Book constructor");
  }
  
  void display() {
    print("Mac name is $name. Its color is $color. It was made $year years ago");
  }
}


// Super in Dart
// Super is used to refer to the parent class.
// It is used to call the parent class's properties and methods.

class Car {
  int numberOfSeats = 4;
}


class SmallCar extends Car{
  int numberOfSeats = 2;

  void display() {
    print("Number of seats in small car is $numberOfSeats");
    print("Number of seats in car is ${super.numberOfSeats}");
  }

}


void main() {
  Student student = Student();
  student.name = "Dumraj";
  student.age = 12;
  student.schoolName = "Premier International School";
  student.schoolAddress = "Baneshwor";
  student.displayStudent();


  print("-" * 60);


  McBook mcbok = McBook("Samuel", "Black", 14);
  mcbok.display();


  print("-" * 60);


  SmallCar smallCar = SmallCar();
  smallCar.display();
}
