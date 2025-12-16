// ignore: file_names
// ignore: file_name

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
print(names2);
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


print("-" * 60);


// Set in Dart
// Set is a unique collection of items.
// You cannot store duplicate values in a set.
// It is unordered, so it can be faster than a list when working with large amounts of data.
// Sets are used when you need to store unique values without considering the order of the input.
// Syntax:
// Set<variable_type> variable_name = {};

Set<String> fruits = {"Apple", "Orange", "Banana", "Mango", "Papaya", "Guava", "Strawberry"};
print("Set of fruit names: $fruits");

// Set Properties in Dart
// first gets the first value of the set
// last gets the last value of the set
// isEmpty returns true or false
// isNotEmpty also returns true or false
// length returns the length of the set

print("First value of the set is ${fruits.first}");
print("Last value of set ${fruits.last}");
print("Is the set empty? ${fruits.isEmpty}");
print("Is the set not empty? ${fruits.isNotEmpty}");
print("The length of set fruits is ${fruits.length} ");


// Check the available value in a set
// The contains method can be used to see if a set contains a specific item or not.
// It returns true or false.

print("Does the set contain Mango? ${fruits.contains("Mango")}");
print("Does the set contain Dwayne the Rock Johnson? ${fruits.contains("Dwayne the Rock Johnson")}");


// Adding and Removing items in Set
// add() adds one element to set
// remove() removes one element from set
fruits.add("Lemon");
fruits.add("Grape");
print("Lemon and Grape added to the set.");
print(fruits);

fruits.remove("Papaya");
print("Papaya removed from set");
print(fruits);


// Adding Multiple Elements to a set
fruits.addAll(["Plum", "Cranberry", "Pineapple", "Watermelon",]);
print("Plum, cranberry, pineapple and watermelon added to the set.");
print(fruits);


// Printing all values in a set individually
for (String fruit in fruits) {
    print(fruit);
}


// Set Methods in Dart
// clear() removes all elements from the set
// difference() creates a new set with the elements of this set that are not in the other
// elementAt() returns the index value of element
// intersection() finds common elements in two sets

Set<String> yapple = {"papple"};
yapple.clear();
print(yapple);

Set<int> numbaSet1 = {1, 2, 3, 4, 5, 6, 7, 8, 9};
Set<int> numbaSet2 = {1, 2, 3, 4, 5};
var differenceSet = numbaSet1.difference(numbaSet2);
print("setNumba1 has elements $differenceSet that are not in setNumba2.");

print("Element at index 4 is ${fruits.elementAt(4)}");

var intersectionSet = numbaSet1.intersection(numbaSet2);
print("Common elements of the two sets are $intersectionSet");


print("-" * 60);


// Map in Dart
// In a map, data can be stored as keys and values.
// Each key must be unique.
// They are similar to dictionaries in python.

Map<String, String> nameLastName = {
  'Sanjan' : 'Pant',
  'Arom' : 'Pradhan',
  'Bibhor' : 'Yadav',
  'Aayam' : 'Aacharya',
  'Nitesh' : 'Devkota'  
};
print(nameLastName);


// Access Value from Key
print("Value of key 'Nitesh' is ${nameLastName['Nitesh']}");


// Map Properties in Dart
// keys gets all keys
// values gets all values
// isEmpty returns true or false
// isNotEmpty returns true or false
// length returns the length of the map

print("All keys in nameLastName map are ${nameLastName.keys} ");
print("All values in nameLastName map are ${nameLastName.values}");
print("Is the map empty? ${nameLastName.isEmpty}");
print("Is the map not empty? ${nameLastName.isNotEmpty}");
print("Length of the map is ${nameLastName.length}");
}