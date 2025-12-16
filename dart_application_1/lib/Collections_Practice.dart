// ignore_for_file: file_names
void main() {
// Program to create a set of fruits and print them using loop
Set<String> froots = {"Apple", "Orange", "Banana", "Mango", "Papaya", "Guava", "Strawberry"};
for (String froot in froots) {
  print(froot);
}


print("-" * 60);


// Program to create empty list and fill it with days using add method
List<String> days = [];
days.add("Sunday");
days.add("Monday");
days.add("Tuesday");
days.add("Wednesday");
days.add("Thursday");
days.add("Friday");
days.add("Saturday");
print(days);


print("-" * 60);


// Program to print names that start with A from a list
List<String> naamHaru = ["Ancle Granpa", "Apple Joos", "Bhaisi Unc", "Maacha Phucche", "Shteev Job", "Bhaancha Kotha"];
List<String> aNaamHaru = naamHaru.where((naam) => naam.startsWith("A")).toList();
print(aNaamHaru);


print("-" * 60);


// Program to create a map with name, address, age, country keys and store values to it then print all keys and values.
Map<String, String> personInfo = {
  'Name' : 'Case of Dilla',
  'Address' : 'Ear of Full',
  'Age' : 'Eighteen',
  'Country' : 'Michael'
};
print("Keys of personInfo are ${personInfo.keys} and their values are ${personInfo.values}");


print("-" * 60);


// Program to create a map with name and phone keys and find all keys with length 4
Map<String, dynamic> beuh = {
'Name' : 'Beba Baker',
'Mail' : 'bebabaker@gmail.com',
'Fone' : 9852012121
};
for (MapEntry xox in beuh.entries) {
  if (xox.key.length == 4) {
    print("${xox.key} : ${xox.value}");
  }
}


print("-" * 60);








}
