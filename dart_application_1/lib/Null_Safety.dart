// ignore_for_file: file_names
// ignore: duplicate_ignore
// ignore: file_names

// Null Safety in Dart
// Null safety is a feature in Dart that helps developers to avoid null errors.
// This feature is called Sound Null Safety in Dart.
// This allows developers to catch null errors at edit time.

// Null safety helps write safe code, reduces the chance of application crashes, and makes it easier to find and fix bugs in code.
// Null safety avoids null errors, runtime bugs, vulnerabilities, and system crashes which are difficult to find and fix.

// In Dart, variables and fields are non-nullable by default, which means that they cannot have a null value unless you explicitly allow it.

// How to declare a null value
String? name;
// This declares the variable name as a nullable variable (it can be either a null or a string).

// Assigning values to nullable variables
void main() {
  String? nameName;
  nameName = "Pohn Jorn";
  print("Name of this talu ram is $nameName");
  nameName = null;


// How to use nullable variables
// You can use if statements to check whether the variable is null or not.
// You can use ! operator, which returns null if the variable is null.
// You can use ?? operator to assign a default value if the variable is null.

  // String? studentNamekneegkneeg;
  // String? studentNamekneegkneeg1;
  // studentNamekneegkneeg = "Nepatop topped me off";
  // studentNamekneegkneeg1 = null;
  // if(studentNamekneegkneeg1 == null) {
  //   print("Ram Bahadur Kumar Sum Slight Sum Slight head game stronger than $studentNamekneegkneeg");
  // }
  // String name1 = studentNamekneegkneeg1 ?? "Chud Foid";
  // print(name1);
  // String name2 = studentNamekneegkneeg1!;
  // print(name2);


  print("-" * 60);


  // Definining a list of nullable items
  List<int?> items = [1, 2, 3, 4, 5, null, 6];
  print(items);


  print("-" * 60);

  // Function with nullable parameter
  printAddress("Kapan");
  printAddress(null);


  print("-" * 60);


  // Null safety in Dart class
  Person person = Person("Old Chud with Kum in his eyes");
  person.printPerson();  


  print("-" * 60);


  // Working with nullable class properties
  Profile profile1 = Profile("KHUMRAJ", "I like washing my hole without using my hands");
  profile1.printProfile();
  Profile profile2 = Profile(null, "Chug Lag Rajesh Hamal Style");
  profile2.printProfile();
  Profile profile3 = Profile("Sanju Pant", null);
  profile3.printProfile();
  Profile profile4 = Profile(null, null);
  profile4.printProfile();













}


// Definining a function with a nullable parameter
void printAddress(String? address) {
  print(address);
}


// Null safety in Dart class
class Person {
  String? name;
  Person(this.name);

  void printPerson() {
    print("Person's name is $name");
  }

}


// Working with nullable class properties
class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);

  void printProfile() {
    print("Name : ${name ?? "Unknown"}"); // If Name is entered as null it will display "Unknown"
    print("Bio : ${bio ?? "Empty"}"); // If bio is entered as null it will display "Empty"
  }
}