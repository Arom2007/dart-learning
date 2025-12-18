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


// Polymorphism in Dart
// Polymorphism is the ability of an object to take on many forms.
// Polymorphism can be done in dart using a technique called method overriding.
// Overriding allows you to create a method in the child class that has the same name ast the method in the parent class.
// The method in the child class overrides the method in the parent class.
/* 
Syntax:
class ParentClass {
void functionName() {
  }
}

class ChildClass extends ParentClass {
@override
void functionName() {
  }
}
*/

class Animal {
  void action() {
    print("Animal is taking a shit.");
  }
}

class Dog extends Animal {
  @override 
  void action() {
    print("Dog is taking a shit.");
  }
}


// Static in Dart
// The static keyword is used to define a variable or method that is shared by all instances of a class.
/* 
Syntax to declare a static variable in dart
class ClassName {
  static dataType variableName;
}


Syntax to initialise a static variable in dart
class ClassName {
  static dataType variableName = value;
  // example
  // static int num = 10;
}


Syntax to access a static variable in dart
class ClassName {
  static dataType variableName = value;

  // Accessing the static variable inside the same class
  void display() {
    print(variableName);
  }
}

void main() {
  // Accessing static variable outside the class
  dataType value = ClassName.variableName;
}


Syntax for static method in dart
class ClassName {
  static returnType methodName() {
  // Statements
  }
}
*/

class Employee {
  // Static variable
  static int count = 0;

  //constructor
  Employee() {
    count ++;
  }

  // Method to display the the value of count
  void totalEmployee() {
    print("Total Employee : $count");
  }
}


class Stewdent {
  int? id;
  String? name;
  static String schoolName = "Whiterun Secondary School";

  Stewdent(this.id, this.name);

  void display() {
    print("ID : $id");
    print("Name : $name");
    print("School Name : ${Stewdent.schoolName}");
  }
}


// Static Method in Dart
class SimpleInterest {
  static double calculateInterest(double principle, double rate, double time) {
    return (principle * rate * time)/100;
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


  print("-" * 60);


  Animal animal = Animal();
  animal.action();

  Dog dog = Dog();
  dog.action();


  print("-" * 60);


  Employee e1 = Employee();
  e1.totalEmployee();
  Employee e2 = Employee();
  e2.totalEmployee();
  Employee e3 = Employee();
  e3.totalEmployee();


  print("-" * 60);


  Stewdent s1 = Stewdent(55, "Dumkal Unc");
  s1.display();
  Stewdent s2 = Stewdent(56, "Scumjump Dhakal");
  s2.display();


  print("-" * 60);


  print("The simple interest is \$${SimpleInterest.calculateInterest(1000, 2, 54)}");
}
