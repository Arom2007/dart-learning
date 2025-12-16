// ignore_for_file: file_names

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


void main() {
  Bicycle bikykle = Bicycle();
  bikykle.brand = "Bap";
  bikykle.color = "White";
  bikykle.size = 15;
  bikykle.maxSpeed = 1500;
  bikykle.changeGear(1945);
  bikykle.bicycleInfo();


  Camera kamera = Camera();
  kamera.name = "David";
  kamera.color = "Breen";
  kamera.megaPixel = 3;
  kamera.displayInfo();


  SimpleInterest shrimpl = SimpleInterest();
  shrimpl.principal = 560;
  shrimpl.rate = 4;
  shrimpl.time = 15;
  print("Simple interest = ${shrimpl.impleSinterest()}");
}