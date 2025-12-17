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


// Inheritance of Constructor in Dart




void main() {
  Student student = Student();
  student.name = "Dumraj";
  student.age = 12;
  student.schoolName = "Premier Int School";
  student.schoolAddress = "Baneshwor";
  student.displayStudent();
}