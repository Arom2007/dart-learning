// ignore_for_file: file_names

// An enum is a special type that represents a fixed number of constant values.
/* 
Syntax:
enum enumName {
  constantName1,
  constantName2,
  constantName3,
  constantName4
}
*/

enum days {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday
}


enum Gender {Male, Female, Memale, Fale}

class Person {
  String? firstName;
  String? lastName;
  Gender? gender;

  Person(this.firstName, this.lastName, this.gender);

  void display() {
    String jender = gender.toString();
    String bender = "";
    print("First Name : $firstName");
    print("Last Name : $lastName");
    if (jender == "Gender.Male") {
      bender = "Male";
    }
    else if (jender == "Gender.Female") {
      bender = "Female";
    }
    else if (jender == "Gender.Memale") {
      bender = "Memale";
    }
    else if (jender == "Gender.Fale") {
      bender = "Fale";
    }
    print("Gender: $bender");
  }
}




void main() {
  var today = days.Thursday;
  switch (today) {
    case days.Sunday:
      print("Today is Sunday.");
      break;
    case days.Monday:
      print("Today is Monday.");
      break;
    case days.Tuesday:
      print("Today is Tuesday.");
      break;
    case days.Wednesday:
      print("Today is Wednesday.");
      break;
    case days.Thursday:
      print("Today is Thursday.");
      break;
    case days.Friday:
      print("Today is Friday.");
      break;
    case days.Saturday:
      print("Today is Saturday.");
      break;
  }


  print("-" * 60);


  Person p1 = Person("John", "Pork", Gender.Male);
  p1.display();


  print("-" * 60);


  // Printing all enum values
  for (days day in days.values) {
    print(day);
  }
}