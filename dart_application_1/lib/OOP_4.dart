// ignore_for_file: file_names, constant_identifier_names

// An enum is a special type that represents a fixed number of constant values.
/* 
Syntax:
enum enumName {
  constantName1,
  constantName2,
  constantName3,
  constantName4
}
*/

// ignore: camel_case_types
enum days {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}


enum Gender {Male, Female, Memale, Fale}

class Person1 {
  String? firstName;
  String? lastName;
  Gender? gender;

  Person1(this.firstName, this.lastName, this.gender);

  void display() {
    String jender = gender.toString();
    String bender = "";
    print("First Name : $firstName");
    print("Last Name : $lastName");
    if (jender == "Gender.Male") {
      bender = "Male";
    }
    else if (jender == "Gender.Female") {
      bender = "Female";
    }
    else if (jender == "Gender.Memale") {
      bender = "Memale";
    }
    else if (jender == "Gender.Fale") {
      bender = "Fale";
    }
    print("Gender: $bender");
  }
}


// Abstract Class in Dart
// Abstract classes are classes that cannot be initialised.
// It is used to define the behavior of another class that inherits it.
// An abstract method is a method that is declared without an implementation.
// It is declared with a semicolon (;) instead of a method body.

/* 
Syntax for abstract class:
abstract class ClassName {
  // Body of abstract class
  method1();
  method2();
}

*/


abstract class Shape {
  int dim1, dim2;
  
  // Constructor
  Shape(this.dim1, this.dim2);

  // Abstract Method
  void area();
}

class Rectangle extends Shape {
  // Constructor
  Rectangle(super.dim1, super.dim2);

  // Implementation of area
  @override
  void area() {
    print("The area of the rectangle is ${super.dim1 * super.dim2}.");
  }
}

class Triangle extends Shape {
  Triangle(super.dim1, super.dim2);

  @override
  void area() {
    print("The area of the triangle is ${0.5 * super.dim1 * super.dim2}.");
  }
}


// Interface in Dart
// An interface defines a syntax that a class must follow.
// It is a contract that defines the capabilities of a class.
// It is used to achieve abstraction in the dart programming language.
// When you implement an interface, you must implement all the properties and methods defined in the interface.
// You can use class or abstract class to declare an interface.
// Mostly abstract class is used to declare an interface.
// In dart you cannot inherit from multiple classes, but you can implement multiple interfaces.

/* 
Syntax of Interface in Dart:
class InterfaceName {
  // code
}

class ClassName implements InterfaceName {
  // code
}
*/
// Abstract class area as interface
abstract class Area {
  void area();
}
// Abstract class perimeter as interface
abstract class Perimeter {
  void perimeter();
}

// Class implementing multiple interfaces
class Circle implements Area, Perimeter {
  double radius;
  Circle(this.radius);

  @override
  void area() {
    print("Area of circle with radius $radius cm is ${3.14 * radius * radius} cm.");
  }
  @override
  void perimeter() {
    print("Perimeter of circle with radius $radius cm is ${2 * 3.14 * radius} cm.");
  }
}


// Mixin in Dart
// Mixins are a way of reusing the code in multiple classes.
// The keywords used while working with mixins are mixin, with and on.

// Rules for Mixin
// Mixin cant be instantiated. You cant create an object of mixin.
// Mixin is used to share code between multiple classes.
// Mixin has no constructor and cannot be extended.
// It is possible to use multiple mixins in a class.

/* 
Syntax for mixins:

mixin Mixin1 {
  // code
}

mixin Mixin2 {
  // code
}

class ClassName with Mixin1, Mixin2 {
  // code
}
*/

mixin RunsOnElectricity {
  void runsOnElectricity() {
    print("This vehicle runs on electricity.");
  }
}

mixin RunsOnPetrol {
  void runsOnPetrol() {
    print("This vehicle runs on petrol.");
  }
}

class Car with RunsOnElectricity, RunsOnPetrol {
  // Now class Car has access to runsOnElectricity() and runsOnPetrol() methods.
}


// Mixin using on Keyword
// The on keyword is used to use a mixin only with a specific class.
/* 
Syntax for mixin using on keyword:
mixin Mixin1 on Class1 {
  // code
}
*/
abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(super.name, super.speed);
}


// Factory Constructor in Dart
// A factory constructor is a constructor that can be used when you don't necessarily want a constructor to create a new instance of your class.
// It provides more control over the object creation process.
// It must have a return statement as it returns an existing instance if available.
// It cannot use 'this' keyword.
// An initialiser list cannot be used with a factory constructor.
// It can be named or unnamed.
// It is also used to return the cached instance of the class.
/* 
Syntax:
class ClassName {
  factor ClassName() {
    // return ClassName instance
  }
}
*/

class Barea {
  final int length;
  final int breadth;
  final int area;

  // Private constructor
  const Barea._internal(this.length, this.breadth) : area = length * breadth;
  // Here ' : area = length * breadth' is an initialiser list.
  // It is used within a constructor to set instance variable's values.
  // It is done before the constructor's main body of code executes.

  // Factory constructor to add condition so that area is not negative.
  factory Barea(int length, int breadth) {
    if (length < 0 || breadth <0) {
      throw Exception("Length and breadth must be positive!");
    }
    return Barea._internal(length, breadth);
  }
}


class Person {
  // final fields
  final String name;

  // private constructor
  Person._internal(this.name);

  // static _cache field
  static final Map<String, Person> _cache = <String, Person>{};

  // factory constructor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
  // The point of this factory constructor is to check if there already exists an instance of the object and return it instead of creating a new instance to save memory.
  // It checks the cache to see if the instance already exists and returns it.
  // This saves memory as it does not have to create a new instance if it already exists.
  // If it does not exist a new instance is created and it is added to the cache.
}


// Singleton in Dart
// A singleton is a class that can only have one instance and provides a global point of access to it.
// It is created by defining a factory constructor that always returns the same instance.
// It is useful when you want to create a single instance of a class and use it throughout the application.

// Singleton using dart factory
class Singleton {
 // static variable
 static final Singleton _instance = Singleton._internal();
 
// factory constructor
 factory Singleton() {
   return _instance;
 }
 // private constructor 
 Singleton._internal();
}







void main() {
  var today = days.Thursday;
  switch (today) {
    case days.Sunday:
      print("Today is Sunday.");
      break;
    case days.Monday:
      print("Today is Monday.");
      break;
    case days.Tuesday:
      print("Today is Tuesday.");
      break;
    case days.Wednesday:
      print("Today is Wednesday.");
      break;
    case days.Thursday:
      print("Today is Thursday.");
      break;
    case days.Friday:
      print("Today is Friday.");
      break;
    case days.Saturday:
      print("Today is Saturday.");
      break;
  }


  print("-" * 60);


  Person1 p1 = Person1("John", "Pork", Gender.Male);
  p1.display();


  print("-" * 60);


  // Printing all enum values
  for (days day in days.values) {
    print(day);
  }


  print("-" * 60);
  

  Rectangle rectangle = Rectangle(10, 50);
  rectangle.area();

  Triangle triangle = Triangle(20, 30);
  triangle.area();


  print("-" * 60);


  Circle circle = Circle(6.5);
  circle.area();
  circle.perimeter();


  print("-" * 60);


  Car car = Car();
  car.runsOnElectricity();
  car.runsOnPetrol();


  print("-" * 60);


  var dog = Dog('My Dog', 25);
  dog.run();


  print("-" * 60);


  Barea barea = Barea(10, 20);
  print("Area is ${barea.area}");

  // Barea barea2 = Barea(-10, 20);
  // print("Area is ${barea2.area}"); // Exception occurs here


  print("-" * 60);


  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');

  // hashcode of person1 and person3 are same
  print("Person1 name is : ${person1.name} with hashcode ${person1.hashCode}");
  print("Person2 name is : ${person2.name} with hashcode ${person2.hashCode}");
  print("Person3 name is : ${person3.name} with hashcode ${person3.hashCode}");


  print("-" * 60);


 Singleton obj1 = Singleton();
 Singleton obj2 = Singleton();
 print(obj1.hashCode);
 print(obj2.hashCode);


}