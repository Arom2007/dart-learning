import 'dart:math';
// ignore: file_name
// ignore_for_file: file_names

// Function to print name
void userName(String name) {
  print("My name is $name.");
}


// Program to print even numbers between intervals using function
void evenNums(int min, int max) {
  for (int i = min; i <= max; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}


// Function to greet user with their name
void greetUser(String name) {
  print("Hello $name.");
}


// Function to generate a random custom length numeric password
void passwordGenerator(int len) {
  String password = "";
  for (int i = 1; i <= len; i++) {
    int randNum = Random().nextInt(10);
    password = "$password$randNum";
  }
  print("$len digit random numeric password is: $password");
}


// Function to find area of circle
void circleArea(double radius) {
  double area = 3.14 * radius * radius;
  print("Area of a circle with radius cm $radius is $area cm square.");
}


// Function to reverse a string
void reverseString(String text) {
  print("Reverse of $text is ${text.split('').reversed.join()}");
}




void main() {
  userName("Barom");

  evenNums(1, 20);

  greetUser("Maxi mum");

  passwordGenerator(5);

  circleArea(7);

  reverseString("hanoog hagras");
}