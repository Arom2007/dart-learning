// ignore_for_file: file_names

// Encapsulation in dart
// In Dart, encapsulation means hiding data within a library.
// In Dart, encapsulation happens at library level, not at class level.
// By default, every .dart file is a library.
// Class properties can be set as private using an underscore (_).
// Public getter and setter methods are used to access and update values of private property.
// Making a property private only makes it library private not class private.
// To make a class property truly private you must create a separate file for the class and import it into the main file.
// By using the 'final' datatype to declare properties, you can make the properties read-only.


class Employee {
  // Declaring private properties
  int? _id;
  String? _name;

  // Getter method to access private property _id
  int getID() {
    return _id!;
  }

  // Getter method to access private property _name
  String getName() {
    return _name!;
  }

  // Setter method to update private property _id
  void setID(int id) {
    _id = id;
  }

  // Setter method to update private property _name
  void setName(String name) {
    _name = name;
  }
}


// Using get and set to create getters and setters
class Vehicle {
  String? _model;
  int? _year;

  // Getter method using get
  String get model => _model!;
  int get year => _year!;

  // Setter methos using set
  set model(String model) => _model = model;
  set year(int year) => _year = year;
  
}


void main() {
  print("-" * 60);


  Employee employee = Employee();
  employee.setID(675367);
  employee.setName("Lado Kun");
  print("Employee ID : ${employee.getID()}");
  print("Employee Name : ${employee.getName()}");


  print("-" * 60);


  var vehicle = Vehicle();
  vehicle.model = "Totoya";
  vehicle.year = 2019;
  print("Vehicle model is ${vehicle.model}.");
  print("Vehicle year is ${vehicle.year}.");


  print("-" * 60);
}