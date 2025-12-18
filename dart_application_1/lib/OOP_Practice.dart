// ignore_for_file: file_names

import 'dart:math';

// Program to generate random custom length password using OOP
class GeneratePassword {
  static String generateRandomPassword(int len) {
    List<String> alphabets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    List<String> specialCharacters = ["!", "@", "#", "\$", "%", "^", "&", "*"];
    List<String> password = [];
    for (int i = 1; i <= len; i++) {
      int randNum = Random().nextInt(3);
      if (randNum == 0) {
        password.add(alphabets[Random().nextInt(alphabets.length)]);
      }
      else if (randNum == 1) {
        password.add(numbers[Random().nextInt(numbers.length)].toString());
      }
      else if (randNum == 2) {
        password.add(specialCharacters[Random().nextInt(specialCharacters.length)]);
      }  
    }
    return password.join();
  }
}


void main() {
  print("Password : ${GeneratePassword.generateRandomPassword(10)}");
}