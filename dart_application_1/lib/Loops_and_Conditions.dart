// ignore: unused_import
import 'dart:io';

// CONDITIONS IN DART

// ignore_for_file: file_names

// If Condition
/*
syntax for if condition:
if(Condition) {
  statement 1;
  statement 2;
  statement 3;
}
 */

void main() {
  var age = 20;
  if(age >= 19) {
    print("Eligible to vote.");
  }

print("-" * 60);

// If-Else Condition
/*
syntax for if-else condition:
if(conditoin) {
  statement 1;
  statement 2;
}
else {
statement 1;
statement 2;
}
 */
int age1 = 12;
if(age1 >= 18) {
  print("Eligible to vote.");
}
else {
  print("Not eligible to vote.");
}

print("-" * 60);


// Condition Based on Boolean Value
print("Married? (Y/N)");
// String? isMarried = stdin.readLineSync();
String isMarried = "N";
bool married = false;
if (isMarried == "Y") {
  married = true;
}
else if (isMarried == "N") {
  married = false;
}
else {
  print("Enter valid character (Y/N).");
}
if(married) {
  print("You are married.");
}
else {
  print("You are not married.");
}

print("-" * 60);

// If-Else-If Condition
/* 
if(condition) {
statement 1;
}
else if(condition) {
statement 2;
}
else if(condition) {
statement 3;
}
else {
statement 4;
}
*/

print("Enter month number: ");
// int? noOfMonth = int.parse(stdin.readLineSync()!);
int noOfMonth = 8;
if (noOfMonth == 1) {
  print("The month is January.");
}
else if (noOfMonth == 2) {
  print("The month is February.");
}
else if (noOfMonth == 3) {
  print("The month is March.");
}
else if (noOfMonth == 4) {
  print("The month is April.");
}
else if (noOfMonth == 5) {
  print("The month is May.");
}
else if (noOfMonth == 6) {
  print("The month is June.");
}
else if (noOfMonth == 7) {
  print("The month is July.");
}
else if (noOfMonth == 8) {
  print("The month is August.");
}
else if (noOfMonth == 9) {
  print("The month is September.");
}
else if (noOfMonth == 10) {
  print("The month is October.");
}
else if (noOfMonth == 11) {
  print("The month is November.");
}
else if (noOfMonth == 12) {
  print("The month is December.");
}
else {
  print("Please try again and enter valid month number.");
}

print("-" * 60);

// Assert in Dart
// Assert is a method which checks for error.
// It takes conditions as an argument.
// If the condition is true, nothing happens, otherwise it raises an error.

/* 
Synatx
assert(condition);
// or
assert(condition, "Custom Message");
*/

// To use assert, you need to run the file in assert mode using:
// dart --enable-asserts file_name.dart

int nm = 13;
assert(nm != 12, "nm must not be 12");

print("-" * 60);

// Switch Case in Dart
/* 
Syntax
switch(expression) {
  case value1:
    //statements
    break;
  case value2:
    //statements
    break;
  default:
    // default statements
}
*/

// How switch-case works in dart
// The expression is evaluated once and compared with each case value.
// If the expression matches with case value1, the statements of case value1 are executed.
// The break keyword tells dart to exit the switch statement.
// If there is no match, the default statements are executed.
// Switch-Case can be used as an alternative to the if-else-if condition.

print("Enter day of the week number: ");
// int? dayOfWeek = int.parse(stdin.readLineSync()!);
int dayOfWeek = 6;
switch(dayOfWeek){
  case 1:
    print("Day is Sunday.");
    break;
  case 2:
    print("Day is Monday.");
    break;
  case 3:
    print("Day is Tuesday.");
    break;
  case 4:
    print("Day is Wednesday.");
    break;
  case 5:
    print("Day is Thursday.");
    break;
  case 6:
    print("Day is Friday");
    break;
  case 7:
    print("Day is Saturday.");
    break;
  default:
    print("Invalid weekday.");
    break;
}


print("-" * 60);

// Switch Case on Strings in Dart
print("Enter weather: ");
// String? weather = stdin.readLineSync();
String weather = "cloudy";
switch (weather) {
  case "Sunny":
    print("It is a sunny day. Make sure you have sunscreen.");
    break;
  case "windy":
    print("It is windy. Please wear warm clothes");
    break;
  case "cloudy":
  case "rainy": //You can have 2 cases to execute the same statement.
    print("Please bring an umbrella.");
  default:
    print("Please enter valid weather.");
    break;
}

print("-" * 60);

// Ternary Operator in Dart
// The ternary operator is like a one-liner replacement for the if-else statement.
// Syntax:
// condition ? expressionIfTrue : expressionIfFalse
int namber1 = 10;
int namber2 = 20;
int greatestNamber = (namber1 > namber2) ? namber1 : namber2;
print("The greatest among the two is $greatestNamber");
// Here if namber1 is greater than namber2 then greatestNamber = namber1
// Else greatestNamber = namber2

print("-" * 60);

print("Enter your age: ");
// int? agerom = int.parse(stdin.readLineSync()!);
int agerom = 18;
String conclusion = (agerom <=19 && agerom >= 13) ? "teenager" : "not teenager";
print("You are $conclusion");

print("-" * 60);


// Loops in Dart
// For Loop
// For Each Loop
// While Loop
// Do While Loop


// For Loop in Dart
/* 
Syntax:
for(initialisation; condition; increment/decrement) {
  statements;
}
*/

for (int i = 1; i <= 10; i++) {
  print(i);
}

print("-" * 60);

// Printing even numbers between 1 and 100
for (int a = 1; a <= 100; a++) {
if (a%2 == 0) {
  print(a);
}
}

print('-' * 60);

// Printing sum of numbers from 1 to 100
int total = 0;
for (int x = 1; x <=100; x++) {
  total = total + x;
}
print("Sum of numbers from 1 to 100 is $total");

print("-" * 60);


// For Each Loop in Dart
// Syntax:
// collection.forEach(void f(value));
List<String> friends = ['Sanjan', 'Bibhor', 'Nitesh', 'Sargah'];
friends.forEach((naam)=>print(naam));

print("-" * 60);

// Finding Index Value of List
friends.asMap().forEach((index, value) => print("$value has index $index."));

print("-" * 60);

// For In Loop in Dart
for(String friend in friends) {
  print("My friend is $friend.");
}

print("-" * 60);


// While Loop in Dart
// In while loop, first the condition is evaluated.
// If the condition is true, the code inside the {} is executed.
// The condition is re-checked before every loop until it is false.
// When the condition is false, the loop stops.
/* 
Syntax:
while (condition) {
  statements
  increment/decrement
}
*/
int b = 1;
while (b <= 10) {
  print(b);
  b++;
}

print("-" * 60);

// Do While Loop in Dart
// In do while loop, first it runs the statements, then the condition is checked.
// If the condition is true, the code inside {} is executed.
// The condition is re-checked until the condition is false.
// When the condition is false, the loop stops.
// In do while loop, the statements will be executed at least once, even if the condition is false.
// This is because it firsts executes statements, then only checks condition.
/* 
Syntax:
do{
  statement1;
  statement2;
  statement3;
}
while(condition);
*/
int c = 10;
do {
  print(c);
  c--;
}
while(c >= 1);

print("-" * 60);

// Sum of numbers from 50 to 100 using Do While
int startingnum = 50;
int sumOfNums = 0;
do {
  sumOfNums = sumOfNums + startingnum;
  startingnum++;
}
while(startingnum <=100);
print("Sum of numbers from 50 to 100 is $sumOfNums");

print('-' * 60);

// When the condition is false in Do While Loop
int nambar = 10;
do {
  print("Yakuza time");
  nambar++;
}
while(nambar < 10);
// Even though the condition is false, the statement executes once.

print("-" * 60);


// Break Statement in Dart
// Sometimes you will need to break out of the loop immediately without checking the condition.
// This can be done using the break statement.
// The break statement is used to exit out of a loop.
// It stops the loop immediately and the program's control moves outside the loop.
// break;

// Continue Statement in Dart
// Sometimes you will need to skip an iteration for a specific condition.
// This can be done using the continue statement.
// The continue statement skips the current iteration of the loop.
// It does not terminate the loop but rather continues with the next iteration.
// continue;

for (int y = 1; y<=10; y++) {
  if (y==5) {
    continue; // When y = 5 it skips the loop once.
  }           // So it prints from 1 to 4 then 6 to 10 and skips 5.
  print(y);
}


print("-" * 60);

// Exception Handling in Dart
// If you are attempting a task that might result in an error, its good to use the try-catch statement.
// When you are unsure about what kind of exception (error) a program produces, then a catch block is used.
/* 
Syntax:
try {
  // Your code here
}
catch(ex) {
  // Exception here
}
*/
int a1 = 22;
int a2 = 0;
int res;
try {
  res = a1 ~/a2; // ~/ is integer division
  print("Result is $res");
}
catch(ex) {
print(ex); // This prints the built-in exception related to the occuring exception.
}          // ie. It prints IntegerDivisionByZeroException

print("-" * 60);

// Finally and On in Dart Try Catch
// Finally block is optional to include, but if included it should be after the try catch block is over.
// It is always executed whether exceptions occur or not.
// On block is used when you know what type of exceptions are produced by the program.
// It describes what statements to execute when that specific exception is produced.

/* 
Syntax:
try {
  statements
}
on Exception1 {
  statements
}
catch Exception2 {
  statements
}
finally {
  statements
}
*/
try {
  res = a1 ~/ a2;
}
on UnsupportedError {
  print("Cannot divide by zero");
}
catch(ex){
print("Error is $ex");
}
finally {
  print("Finally blocks are always executed last.");
}

print("-" * 60);

// Throwing an Exception in Dart
// The throw keyword is used to raise an exception explicitly.
// Syntax:
// throw new Exception_name();




}