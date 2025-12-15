import 'dart:math';
// ignore: file_name
// ignore_for_file: file_names

/* 
  Syntax of a Function in dart:
  returntype functionName(parameter1, parameter2) {
    // Function Body
  }
*/
  // returntype tells you the function output type.
  // It can be void, String, int, double, etc.
  // If it does not return anything, you ca use void as the return type.

  // functionName is the name of the function.
  // You can name the function anything you want following the lowerCamelCase convention.

  // parameters are the input to the function which is written inside the bracket.
  // parameters should also follow the lowerCamelCase naming convention.



// Function that prints my name
void printName() {
  print("The Jame's Bond. Names Bond.");
}

// Function that adds two numbers
void addNums(int num1, int num2) {
  print("Sum of two numbers is ${num1 + num2}");
}

// Function that calculates simple interest
void simpleInterest (double principal, double rate, double time) {
  double interest = (principal * rate * time) / 100;
  print("Simple Interest is $interest.");
}

// Function that finds the cube of a number
void cuber(int numbh) {
  print("Cube of $numbh is ${numbh * numbh * numbh}");
}
//Positional Parameter in Dart
// In positional parameters, you must supply the arguments in the same order as you defined the parameters when writing the function.
// If you call the functionn with the parameters in the wrong order, you will get the wrong result.

// Providing Default Value on Positional Parameter
void printInfo(String name, String gender, [String title = 'doodh']) {
  print("Hello $name $title! Are you a $gender?");
}
// Here title is an optional parameter.
// If the user does not pass the title, it will automatically set the title to 'doodh'.


// Named Parameter in Dart
// Curly braces {} are used to specify named parameters.
// You can pass the values in any order using named parameters.
void printInformation({String? name, String? gender}) {
  print("$name bruv you are a $gender");
}


// Use of Required in Named Parameter
void printNameAge({required String name, required int age}) {
  // Here if the person's name and age isnt passed, the function wont work.
  print("Hello $name! Are you $age years old?");
}


// Use of Optional Parameter
void printFavChar(String name, String charName, [String? title]) {
  print("$name, your favorite character is $title $charName");
  // Here charName is an optional parameter.
  // The function will work regardless if title is passed or not.
}


// Arrow Function in Dart
// Arrow function is used for the function body with only one line.
// It is represented by => symbol.
// Syntax:
// returnType functionName(parameters) => expression;
// => expression; is equivalent to return expression;
double simpInt(double P, double R, double T) => (P*R*T)/100;


// Scope in Dart
// Scope is a concept that refers to where values can be accessed or referenced.
// Dart uses curly braces {} to determine the scope of variables.
// Usually variables inside curly braces cant be used outside the curly braces.

// Method Scope
// If you create variables inside the method, they can be used inside the method block but not outside it.
// Example
void men() {
  String text = "This text is inside the men function. It cant be accessed outside this function.";
  print(text);
  // If print(text); is used outside the men function it wont print this line to string.
}

// Global Scope
// If a variable is defined in the global scope it can be used anywhere in your program.
// Example
String global = "This text is global. It can be access from anywhere in the program.";
void abc() {
  print(global);
}


// Math in Dart
// To use math in dart, you must use import 'dart:math';

// Generating Random Numbers in Dart
void tryingDartMath() {
  Random random = new Random(); // IMPORTANT
  int randomNumber = random.nextInt(10);
  // randomNumber will be assigned a random number between 0 to 9.
  print("Random number between 0 to 9 is $randomNumber.");

  int randomNumber2 = random.nextInt(10) + 1;
  // randomNumber2 will be assigned a random number between 1 to 10.
  print("Random number between 1 to 10 is $randomNumber2.");


  // Generating Random Number Between any Number
  // A formula needs to be used to generate a random number between any numbers in dart.
  // Formula:
  // min + Random().nextInt((max + 1) - min);
  // If you want a random number between 10 to 20, min becomes 10 and max becomes 20.
  int min = 10;
  int max = 20;
  int randomNum = min + Random().nextInt((max + 1) - min);
  print("Random number generated between $min and $max is $randomNum.");


  // Generating Random Boolean and Double Values
  double randomDouble = Random().nextDouble();
  bool randomBoolean = Random().nextBool();
  print("Randomly generated double value is $randomDouble.");
  print("Randomly generated boolean value is $randomBoolean.");


  // Generating a List of Random Numbers in Dart
  List<int> randomList = List.generate(10, (_) => Random().nextInt(100)+1);
  print(randomList);


  // Useful Math Functions in Dart
  // pow(10, 2) is equal to 10 ^ 2 which is 100.
  // max(10, 2) outputs the greater number among the 2 which is 10.
  // min(10, 2) outputs the lesser number among the 2 which is 2.
  // sqrt(25) outputs the square root of 25 which is 5.
}


void main() {
  printName();

  addNums(16, 16);

  simpleInterest(15, 7, 18);

  cuber(67);

  printInfo("Salmon", "man");
  printInfo("Gargah", "gawar", "maam");

  printInformation(gender: "waterbottle", name: "Chingis Khan");
  // When defining the parameters for printInformation, name was first and gender was second.
  // But using named parameter we can pass the value as gender first and name second and still get the correct result.

  printNameAge(age: 18, name: "Kumalala");
  // As required keyword was used, the function will not work until name and age has been provided.

  printFavChar("Arom", "Spider-Man", "");
  printFavChar("Ganjan", "Strange", "Dr."); 


  // Anonymous Function in Dart
  // An anonymous function is one that may not have a name nor a return type.
  // Example
  // ignore: prefer_function_declarations_over_variables
  var cube = (int nember) {
    return nember * nember * nember;
  };
  print("Cube of 2 is ${cube(2)}");


  print("Simple interest is equal to ${simpInt(16, 17.5, 34)}");
  

  tryingDartMath();


}
