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
  var cube = (int nember) {
    return nember * nember * nember;
  };
  print("Cube of 2 is ${cube(2)}");
  


}
