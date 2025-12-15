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


// Replace range of list
var list = [10, 15, 20, 25, 30];
print("List before updation: $list");
list.replaceRange(0, 4, [5, 6, 7, 8]); // replaces the first 4 items of list 
print("List after updation using replaceAll() function : $list");


// Removing List Elements
// remove() removes one specific element at a time from the list
// removeAt() removes an element from the specified index position and returns it
// removeLast() removes the last element from the list
// removeRange() removes the items within the specified range


var oddList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29];
print(oddList);

oddList.remove(29);
print(oddList);

oddList.removeAt(13);
print(oddList);

oddList.removeLast();
print(oddList);

oddList.removeRange(9, 12);
print(oddList);


// Loops in list
oddList.forEach((n) => print(n));


// Multiply all value in list by 2
var lisht = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var doubledLisht = lisht.map((n) => n*2);
print(doubledLisht);


// Combine two or more list in dart
List<String> naam = ["aata", "bata", "cata"];
List<String> naam2 = ["data", "eata", "fata"];
List<String> allNaam = [...naam, ...naam2];
print(allNaam);


// Conditions in List
bool sad = true;
var cart = ["milk", "ghee", if (sad) "orange juice"];
print(cart);


// Where In List 
// Where can be used with list to filter specific items
var nambera = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
var even = nambera.where((number) => number.isEven).toList();
print(even);
}