// ignore_for_file: file_names, prefer_initializing_formals

// Class in Dart
/* 
Syntax:
class ClassName {
  // properties or fields of the class
  // methods or functions of the class
}
*/
class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name");
    print("Person phone number: $phone");
    print("Person marriage status: $isMarried");
    print("Person age: $age");
  }
}


class Student {
  String? studentName;
  int? age;
  int? grade;

  void studentInfo() {
    print("Student name is : $studentName");
    print("Student age : $age");
    print("Student grade : $grade");
  }
}


class Book {
  String? bookName;
  String? authorName;
  String? genre;
  int? price;

  void bookInfo() {
    print("Book's name is $bookName");
    print("Book's author is $authorName");
    print("Book's genre is $genre");
    print("Book's price is $price");
  }
}


// Declaring Object in Dart
// Syntax:
// ClassName objectName = ClassName();

class Bicycle {
  String? brand;
  String? color;
  int? size;
  int? maxSpeed;

  void changeGear(int newSpeed) {
    maxSpeed = newSpeed;
  }

  void bicycleInfo() {
    print("Bike brand: $brand");
    print("Bike color : $color");
    print("Bike size: $size");
    print("Bike max speed : $maxSpeed");
  }
}

class Camera {
  String? name;
  String? color;
  int? megaPixel;

  void displayInfo() {
    print("Camera name : $name");
    print("Camera color : $color");
    print("Camera mega pixel : $megaPixel");
  }
}


class SimpleInterest {
  int? principal;
  int? rate;
  int? time;

  double impleSinterest() {
    return (principal! * rate! * time!)/100;
  }
}


// Constructor in Dart
// A constructor is a special method used to initialise an object.
// It is automatically called when an object is created.
// All of the above classes have been made without using a constructor.
/* 

Syntax:
class ClassName {
  // Constructor declaration (same name as ClassName)
  ClassName() {
    // body of the constructor  
  }
}

*/

class Teacher {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Teacher(String name, int age, int rollNumber) {
    print("Constructor called"); // This is just to check if constructor gets called or not
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}


// The constructor can be written in a single line
class College {
  String? name;
  String? location;
  int? rank;
  int? numStudents;

  //Constructor in short form
  College(this.name, this.location, this.rank, this.numStudents);

  void printInfo() {
    print("Name of the college is $name.");
    print("It is located in $location.");
    print("Nationally it is ranked $rank.");
    print("It has $numStudents students.");
  }
}


// Constructors with optional parameters
class Employee {
  String? name;
  int? age;
  String? position;
  String? salary;

  // Constructor 
  Employee(this.name, this.age, [this.position = "Redacted", this.salary = "Unknown"]);

  void displayInfo() {
    print("Employee name : $name");
    print("Employee age : $age");
    print("Employee position : $position");
    print("Employee salary : $salary");
  }
}


// Constructors with named parameters
class Chair {
  String? name;
  String? color;

  // Constructor
  Chair({this.name, this.color});

  void display() {
    print("Chair name is $name and is $color in color.");
  }
}


// Constructor with default values
class Table {
  String? name;
  String? color;

  // Constructor
  Table({this.name = "Yottaduch", this.color = "beige"});

  void display() {
    print("The table's name is $name and is $color in color");
  }
}


// Default constructor in dart
class Laptop {
  String? brand;
  int? price;

  // Default constructor
  Laptop() {
    brand = "Hey Sir";
    price = 60000;
  }
}


// Constant constructor in dart
// Constant constructor is a constructor that creates a constant object.
// A constant object is an object whose value cannot be changed.
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}



void main() {
  Bicycle bikykle = Bicycle();
  bikykle.brand = "Bap";
  bikykle.color = "White";
  bikykle.size = 15;
  bikykle.maxSpeed = 1500;
  bikykle.changeGear(1945);
  bikykle.bicycleInfo();


  print("-" * 60);


  Camera kamera = Camera();
  kamera.name = "David";
  kamera.color = "Breen";
  kamera.megaPixel = 3;
  kamera.displayInfo();


  print("-" * 60);


  SimpleInterest shrimpl = SimpleInterest();
  shrimpl.principal = 560;
  shrimpl.rate = 4;
  shrimpl.time = 15;
  print("Simple interest = ${shrimpl.impleSinterest()}");


  print("-" * 60);


Teacher teacher = Teacher("LoanDon", 21, 8);
print("Name : ${teacher.name}");
print("Age : ${teacher.age}");
print("Roll Number : ${teacher.rollNumber}");


print("-" * 60);


College college = College("Dark Future College", "Kaalo Chowk", 89, 3);
college.printInfo();


print("-" * 60);


Employee employee = Employee("Darby", 57, "Gambler");
employee.displayInfo();


print("-" * 60);


Chair chair = Chair(color : "black", name : "Khum");
chair.display();


print("-" * 60);


Table table = Table();
table.display();


print("-" * 60);


Laptop laptop = Laptop();
laptop.price = 80000;
print("Laptop brand is ${laptop.brand} and cost Rs ${laptop.price}.");


print("-" * 60);


// p1 and p2 has the same hash code.
Point p1 = const Point(1, 2);
print("The p1 hash code is: ${p1.hashCode}");

Point p2 = const Point(1, 2);
print("The p2 hash code is: ${p2.hashCode}");
// without using const
// this has different hash code.
Point p3 = Point(2, 2);
print("The p3 hash code is: ${p3.hashCode}");

Point p4 = Point(2, 2);
print("The p4 hash code is: ${p4.hashCode}");
}