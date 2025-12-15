import 'dart:io';
void main() {
// Program to check if number is odd or even.
print("Enter a number: ");
// int? numToCheck = int.parse(stdin.readLineSync()!);
int numToCheck = 46;
if (numToCheck % 2 == 0) {
  print("$numToCheck is an even number.");
}
else {
  print("$numToCheck is an odd number.");
}

print("-" * 60);

// Program to check whether a character is a vowel or consonant.
print("Enter a character to check: ");
// String? characterToCheck = stdin.readLineSync();
String characterToCheck = "A";
if (characterToCheck == "A" || characterToCheck == "E" || characterToCheck == "I" || characterToCheck == "O" || characterToCheck == "U") {
  print("Character $characterToCheck is a vowel");
}
else if (characterToCheck == "a" || characterToCheck == "e" || characterToCheck == "i" || characterToCheck == "o" || characterToCheck == "u") {
  print("Character $characterToCheck is a vowel");
}
else {
  print("Character $characterToCheck is a consonant.");
}

print("-" * 60);

// Program to check whether a number is positive, negative or zero.
print("Enter number to be checked: ");
// int? numnum = int.parse(stdin.readLineSync()!);
int numnum = -67;
if (numnum > 0) {
  print("Number $numnum is a positive number.");
}
else if (numnum < 0) {
  print("Number $numnum is a negative number.");
}
else {
  print("Number $numnum is 0.");
}

print("-" * 60);

// Program to calculate the sum of first 100 numbers.
int total = 0;
for (int i = 1; i <= 100; i++) {
  total = total + i;
}
print("Sum of first 100 numbers is equal to $total.");

print("-" * 60);

// Program to generate multiplication table of 5.
int ram = 5;
for (int x = 1; x <= 10; x++) {
  ram = 5 * x;
  print("5 x $x = $ram");
}

print("-" * 60);

// Program to generate multiplication tables from 1 to 9.
int mul = 0;
for (int a = 1; a <= 9; a++) {
  for (int b = 1; b <= 10; b++) {
      mul = a * b;
      print("$a x $b = $mul");
  }
  print("-" * 60);
}


// Program to print 1 to 100 but not 41.
for (int breh = 1; breh <= 100; breh++) {
  if (breh == 41) {
    continue;
  }
  print(breh);
}

print("-" * 60);

// Program to create a simple calculator that takes 2 inputs and performs operations.
print("Enter first number: ");
int? num1 = int.parse(stdin.readLineSync()!);
print("Enter second number: ");
int? num2 = int.parse(stdin.readLineSync()!);
print("Enter operation to be performed: ");
String? operation = stdin.readLineSync();
double dub = 0;
if (operation == "+") {
  print("Sum of two numbers is ${num1 + num2}");
}
else if (operation == "-") {
  print("Difference between two numbers is ${num1 - num2}");
}
else if (operation == "*") {
  print("Product of two numbers is ${num1 * num2}");
}
else if (operation == "/") {
  dub = num1 / num2;
  print("$num1 divided by $num2 is equal to $dub");
  if (num2 == 0) {
    print("Cannot divide by 0");
  }
    
}
else {
  print("Enter valid operator sign.");
}

}