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


// Function to cube number
void cube(int numb) {
  print("Cube of $numb is ${numb * numb * numb}");
}


// Function to add 2 integers
int add(int num1, int num2) => num1 + num2;


// Function that takes 2 number arguments and returns the larger number
int largerNum(int num1, int num2) {
  if (num1 > num2){
    return num1;
  }
  else {
    return num2;
  }
}


// Function that returns true if number is even
bool isEven(int numba) {
  if (numba % 2 == 0) {
    return true;
  }
  else {
    return false;
  }
}


// Function with parameters name, age and isActive where isActive has a default value of true
void createUser(String name, int age, [bool isActive = true]) {
  print("User $name is $age years old and their active status is $isActive");
}


// Function to calculate area of rectangle with default length and width of 1
void rectangleArea([double length = 1, double width = 1]) {
  print("Area of rectangle with length $length cm and width $width cm is ${length * width}");
}





void main() {
  userName("Barom");

  evenNums(1, 20);

  greetUser("Maxi mum");

  passwordGenerator(5);

  circleArea(7);

  reverseString("hanoog hagras");

  cube(5);

  int sum = add(67, 41);
  print("Sum of 67 and 41 is $sum");

  int largerNumber = largerNum(41, 67);
  print("The larger number between 41 and 67 is $largerNumber");

  print("${isEven(32)}");

  createUser("Manjan", 2);

  rectangleArea(5, 25);
}