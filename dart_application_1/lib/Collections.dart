// ignore: file_name
import 'dart:math';

void main() {
// List in Dart
// Lists are variables that can store multiple values.
// Lists are of two types: Fixed length and Growable list

// Fixed length lists cannot change their size at run time
var fixedLengthList = List<int>.filled(5,0);
print(fixedLengthList);

// Growable lists are lists without a specified length
var growableList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
print(growableList);

// Accessing item of a list using index
print("Item in index 0 is ${growableList[0]}");

// Getting index by value
print("Index of 3 in the list is ${growableList.indexOf(9)}");

// Finding the length of the list
print("Length of the list is ${growableList.length} items");

// Changing values of a list
List<String> names = ["Bom", "Gom", "Nitesh", "Gargah"];
names[0] = "Manjan";
names[1] = "Bib";
print(names);

// Mutable and Immutable list
// Mutable list means they can change after the declaration.
// Immutable list means they cant change after the declaration.
List<String> names1 = ["Raj", "John", "Rocky"]; // Mutable List
names1[1] = "Bhilla"; // possible
names1[2] = "Melon"; // possible
    
const List<String> names2 = ["Raj", "John", "Rocky"]; // Immutable List
/*
names2[1] = "Oggy"; // not possible
names2[2] = "DeeDee"; // not possible
*/


// List Properties in Dart
// first returns the first element in the list
// last returns the last element in the list
// isEmpty returns true if the list is empty and false if the list is not empty
// isNotEmpty returns true if the list is not empty and false if the list is empty
// length returns the length of the list
// reversed returns a list in reverse order
// single is used to check if the list has only one element and it returns it

print("First element in the list names is ${names.first}");
print("Last element in the list names is ${names.last}");
print("Is names Empty: ${names.isEmpty}");
print("Is names not Empty: ${names.isNotEmpty}");
print("List names in reverse: ${names.reversed}");


// Adding Items to a List
// add() adds one element at a list and returns the modified list
// addAll() inserts multiple values to the given list
// insert() inserts one element at a specific index position
// insertAll() insert multiples values at a specific index position

List<int> evenList = [2, 4, 6];
print(evenList);

evenList.add(8);
print(evenList);

evenList.addAll([18, 20, 22]);
print(evenList);

evenList.insert(4, 10);
print(evenList);

evenList.insertAll(5, [12, 14, 16]);
print(evenList);





}