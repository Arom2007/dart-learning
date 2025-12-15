// ignore_for_file: file_names

import 'dart:io';
void main() {  
// Program in dart that finds simple interest.
print("Enter p, t and r to calculate simple interest: ");
int? p = int.parse(stdin.readLineSync()!);
int? t = int.parse(stdin.readLineSync()!);
int? r = int.parse(stdin.readLineSync()!);
double simpleInterest = (p * t * r)/100;
print("Simple interest is: $simpleInterest");

print("-" * 60);

// Program to remove all whitespaces from string.
String sentence = "        Hello this sentence has lots of white spaces.           ";
print("Trimmed sentence becomes: ${sentence.trim()}");

print("-" * 60);

// Program to convert string to int.
String age = "18";
print("Integer version of age is ${int.parse(age)}");

print("-" * 60);

// Program to calculate split amount of bill.
print("Enter total bill amount: ");
double? totalAmount = double.parse(stdin.readLineSync()!);
print("Enter number of people to split amongst: ");
int? numPeople = int.parse(stdin.readLineSync()!);
int splitAmount = totalAmount~/numPeople;
print("Each person has to pay Rs $splitAmount.");

print("-" * 60);

}