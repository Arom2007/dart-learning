// ignore: file_name
// ignore_for_file: file_names

import 'dart:io';

void main() {
  var firstname = "Arom";
  var lastname = "Pradhan";
  print("My name is $firstname $lastname");
  
  // Mathematical operations
  int num1 = 22;
  int num2 = 44;
  
  int sum = num1 + num2;
  int diff = num2 - num2;
  int mul = num1 * num2;
  double div = num2 / num1; //double is used here because when dividing output may be in decimal
  
  print("Sum of two numbers is $sum.");
  print("Difference between two numbers is $diff.");
  print("Product of two numbers is $mul.");
  print("$num2 divided by $num1 is equal to $div.");
    
  // In Dart
  // String is for storing text values
  // int is for storing integers
  // double is used for storing floating integers including decimals
  // num is used for storing both int and decimals
  // bool is used for storing boolean values like true or false
  // var is used for storing any value or variable
  // List is used for an ordered group of items
  // Map represents a set of values as key-value pairs
  // Set is an unordered list of unique values of the same type
  // runes represents the unicode values of a string
  // null represents a null value
  
  
  // RULES FOR CREATING VARIABLES
  // Variable names are case sensitive, i.e., 'a' and 'A' are different.
  // A variable name can consist of letters and alphabets.
  // A variable name cannot start with a number.
  // Keywords are not allowed to be used as a variable name.
  // Blank spaces are not allowed in a variable name.
  // Special characters are not allowed except for the (_) and the ($) sign.
  // Dart uses lowerCamelCase naming convention for variables.
  
  //Assigning a constant
  // a constant is a value that never changes for example.
  const pi = 3.14;
  // pi = 4.23 will not be possible after declaring const pi as 3.14
  print("Value of pi is $pi");
  
  
  // Round Double (float) Value to 2 Decimal Places
  double cost = 141.622222;
  print(cost.toStringAsFixed(2));
  // .toStringAsFixed rounds the double value to 2 decimal places in dart
  
  
  // Multi-line string in dart
  String multiLineText = 
  '''
  Hello my name is Arom Pradhan.
  Today I am testing out things in dart.
  ''';
  print(multiLineText);
  
  
  // Special Characters in String
  // \n creates a new line
  // \t does the same thing as pressing tab
  print("I am from \n Nepal.");
  print("I am not from \t China.");
  
  
  // Creating a raw string in dart
  num price = 10;
  String withoutRawString = "The value of price is \t $price"; // regular String
  String withRawString =r"The value of price is \t $price"; // raw String
  print("Without Raw: $withoutRawString"); // regular result
  print("With Raw: $withRawString"); // with raw result
  
  
  // Converting a string to int in dart
  String strvalue = "500";
  print("strvalue is a ${strvalue.runtimeType}"); 
  // .runtimeType gives datatype
  int intvalue = int.parse(strvalue);
  // int.parse(<variable>) takes a string as an argument and turns it into an integer.
  print("intvalue is a ${intvalue.runtimeType}");
  // To convert string to double in dart just use double.parse(strvalue);
  
  
  // Converting int to string in dart
  int one = 1;
  String oneInString = one.toString();
  // .toString() turns the variable into a string
  print("oneInString is ${oneInString.runtimeType}");
  
  
  // Converting double to int in dart
  double numb1 = 10.1;
  int numb2 = numb1.toInt();
  print("The value of numb1 is $numb1. Its type is ${numb1.runtimeType}");
  print("The value of numb2 is $numb2. Its type is ${numb2.runtimeType}");
  
  
  // Lists in dart
  List<String> names = ["Raj", "John", "Max"];
  print("Value of names is $names");
  print("Value of names[0] is ${names[0]}"); // index 0
  print("Value of names[1] is ${names[1]}"); // index 1
  print("Value of names[2] is ${names[2]}"); // index 2

  // Finding Length of List 
  int length = names.length;  
  print("The Length of names is $length");
  
  
  // Sets in dart
  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  print(weekday);
  
  
  // Maps in dart
  Map<String, String> myDetails = {
    'name': 'Arom Pradhan',
    'address' : 'Pulchowk',
    'fathername': 'Om Pradhan',
    'mothername': 'Rojeeya Pradhan'
  };
  print(myDetails['name']);


  // Runes in dart
  String value = "a";
  print(value.runes);
  // Runes returns the unicode value of a string
  // In this example it will output the value 97
  
  
  // Statically typed in dart
  // Static typing requires the declaration of variable types before compile time.
  // The name and type of the variable must be specified before compile time.
  // This verification process is known as type checking.
  // Type checking occurs at compile time in static typing.

  var myVariable1 = 50;
  // myVariable1 = "hello"; 
  // This will give an error as myVariable1 has been declared as int
  print(myVariable1);

  // Dynamically typed in dart
  // In dynamic typing type checking occurs at runtime.
  // There is no need to explicitly declare variable types.
  
  dynamic myVariable2 = 50;
  myVariable2 = "Hello";
  print(myVariable2);
  // This will output "Hello" instead of 50


  // This is an exmaple of a single line comment.

  /*
  This is an example of
  a multi-line comment.
  */

  /// This is an example of a documentation comment.
  

  /*

  Operators in Dart
  + Addition
  - Subtraction
  -expr Unary Minus (For reversing the sign of the expression)
  * Multiplication
  / Division
  ~/ Integer Division (Divides two operands and outputs integer)
  % Modulus (Outputs remainder after integer division)

  */

  int a = 10;
  int b = 2;

  int sumofab = a + b;
  int diffofab = a - b;
  int unaryMinusofa = -a;
  int prodofab = a * b;
  double divofab = b / a;
  int div2ofab = b ~/ a;
  int modofab = a % b;

  print("The sum of the two numbers is $sumofab");
  print("The difference between the two numbers is $diffofab");
  print("The unary minus of $a is $unaryMinusofa");
  print("The product of the two numbers is $prodofab");
  print("The division of the two numbers gives $divofab");
  print("The integer division of the twon numbers gives $div2ofab");
  print("The modulus of the two numbers is $modofab");


  print("-" * 60); // Separator


/*

Increment and Decrement operators in dart
1) Pre-increment
  - Increases the variable's value by 1 before the new value is used in the expression.
2) Post-increment
  - The variable's original value is used in the expression first, and then it is incremented by 1.
3) Pre-decrement
  - Decreases the variable's value by 1 before the new value is used in the expression. 
4) Post-decrement
  - The variable's original value is used in the expression first, and then it is decremented by 1. 

*/

// Pre-increment example
int A = 0;
int B = ++A;
// 'A' is incremented to 1 first, then 'B' is assigned the new value of 'A' (1).
print("Pre-increment: A = $A and B = $B");

print("-" * 60); // Separator

// Post-increment example
int C = 0;
int D = C++;
// 'D' is assigned the original value of 'C' (0) first, then 'C' is incremented to 1.
print("Post-increment: C = $C and D = $D");

print("-" * 60); // Separator

// Pre-decrement example
int E = 0;
int F = --E;
// 'E' is decremented to -1 first, then 'F' is assigned the new value of 'E' (-1).
print("Pre-decrement: E = $E and F = $F");

print("-" * 60); // Separator

// Post-decrement example
int G = 0;
int H = G--;
// 'H' is assigned the original value of 'G' (0), then 'G' is decremented to -1.
print("Post-increment: G = $G and H = $H");

print("-" * 60); // Separator

/* 

Assignment Operators in dart
= Assign a value to a variable
+= Adds a value to a variable
-= Reduces a value from the variable
*= Multiply value to variable
/= Divide variable by value

*/

double age = 24;
age += 1;
print("After additionn age is $age");
age -= 1;
print("After subtraction age is $age.");
age *= 2;
print("After multiplication age is $age");
age /= 4;
print("After division age is $age");

print("-" * 60); // Separator

/*

Relational Operators
> Greater than
< Less than
>= Greater than or equal to
<= Less than or equal to
== Equal to
!= Not equal to 

*/

 int numA=10;
 int numB=5;
 //printing info
 print(numA==numB); 
 print(numA<numB);
 print(numA>numB);
 print(numA<=numB);
 print(numA>=numB);

/*

print("-" * 60); // Separator

Logical Operators
&& AND
|| OR
!= NOT

*/

int userid = 123;
int userpin = 456;
print((userid == 123) && (userpin== 456)); // print true
print((userid == 1213) && (userpin== 456)); // print false.
print((userid == 123) || (userpin== 456)); // print true.
print((userid == 1213) || (userpin== 456)); // print true
print((userid == 123) != (userpin== 456));//print false

print("-" * 60); // Separator

/*

Type Test Operators
is  Is
is! Is Not

*/

String value1 = "Dart Tutorial";
int age1 = 10;
// ignore: unnecessary_type_check
print(value1 is String);
// ignore: unnecessary_type_check
print(age1 is !int);

print("-" * 60); // Separator

// String User Input in Dart
// First you need to import dart:io using import 'dart:io'; in the beginning of the file
print("Enter name: ");
String? name1 = stdin.readLineSync();
print("The entered name is $name1");


// Integer User Input in Dart
// Again import dart:io
print("Enter a number: ");
int? number = int.parse(stdin.readLineSync()!);
// It is the same process as with string but you need to convert into int and add a '!'
print("The entered number is $number");


// Floating Point User Input in Dart
print("Enter a floating number: ");
double number1 = double.parse(stdin.readLineSync()!);
print("The entered floating number is $number1");

print("-" * 60); // Separator


// Strings in Dart
// Single quotes are used for single line string ''
// Double quotes can also be used for single line string ""
// Triple quotes can be used for multi-line string """"""

//Strings can be concatenated using either + or interpolation
String fName = "John";
String lName = "Pork";
// ignore: prefer_interpolation_to_compose_strings
print("Using +, name becomes " +fName+ " " +lName +".");
print("Using interpolation, name becomes $fName $lName.");


print("-" * 60); // Separator

//Properties of String in Dart
// .codeUnits returns an unmodifiable list of the UTF-16 code unites of the string.
// .isEmpty returns true if this string is empty.
// .isNotEmpty returns false if this string is empty.
// .length returns the length of the string including space, tab and newline characters.

String stringexample = "Hello";
print(stringexample.codeUnits);
print(stringexample.isEmpty);
print(stringexample.isNotEmpty);
print("The length of the string is ${stringexample.length}");

print("-" * 60); // Separator


// Methods of String
// .toLowerCase() converts all characters in the string to lowercase.
// .toUpperCase() converts all characters in the string to uppercase.
// .trim() returns the string without any leading and trailing whitespace.
// .trimLeft() and .trimRight() methods can remove space from left and right.
// .compareTo() compares this object to another.
// .replaceAll() replaces all substrings that match the specified pattern with a given value.
// .split(Pattern) splits the string at matches of the specified delimiter.
// .toString() returns a string representation of this object.
// .substring() returns the text from any position you want.
// .codeUnitAt() returns the 16-bit UTF code unit at the given index.


// Converting String to Uppercase and Lowercase
String address1 = " Pulchowk     ";
String address2 = "   Bhaisepati  ";
print("Address 1 in uppercase is ${address1.toUpperCase()}");
print("Address 2 in lowercase is ${address2.toLowerCase()}");

// Trim String in Dart
// Trim does not remove the spaces in the middle.
print("Result of address 1 trim is ${address1.trim()}");
print("Result of address 1 trimLeft is ${address1.trimLeft()}");
print("Result of address 2 trimRight is ${address2.trimRight()}");

// Comparing Strings in Dart
// When you compare two strings in dart it will give 0 when the two are equal.
// It will give 1 when the first string is greater than the second.
// It will give -1 when the first string is smaller than the second.
print("Comparing address1 with address2 we get: ${address1.compareTo(address2)}");
print("Comparing address2 to address1 we get: ${address2.compareTo(address1)}");

// Replacing String in Dart
String text = "Hello! My name is Dell.";
String newText = text.replaceAll("Dell", "Sanjan");
print("Original text was $text");
print("Replaced text is $newText");

// Splitting String in Dart
String allNames = "Sanjan, Bibhor, Nitesh, Gargah";
List<String> listNames = allNames.split(",");
print("Value of listName is $listNames");
print("List name at 0 index is ${listNames[0]}");
print("List name at 1 index is ${listNames[1]}");

// ToString in Dart
int nNumber = 20;
print("Converting into string it becomes ${nNumber.toString()}");

// SubString in Dart
String text1 = "I love computer";
print("Print only computer: ${text1.substring(7)}");
print("Print only love: ${text1.substring(2,6)}");

// Reversing a String in Dart
String input = "Orange";
print("The reverse of $input is ${input.split('').reversed.join()}");

// Capitalising the first letter of a string in Dart
String exampleText = "ok Computer";
print("Capitalised first letter of string is: ${exampleText[0].toUpperCase()}${exampleText.substring(1)}");
}
