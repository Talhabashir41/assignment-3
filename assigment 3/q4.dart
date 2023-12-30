import 'dart:io';

void main() {

    List<Map<String, String>> userCredentials = [
      {"email": "talha1@gmail.com", "password": "password1"},
      {"email": "talha2@gmail.com", "password": "password2"},
      {"email": "talha3@gmail.com", "password": "password3"}
    ];

    void userLogin() {
      print("Enter your email:");
      String enteredEmail = stdin.readLineSync()!;

      print("Enter your password:");
      String enteredPassword = stdin.readLineSync()!;

      bool credentialsMatch = false;
      for (var user in userCredentials) {
        if (user["email"] == enteredEmail &&
            user["password"] == enteredPassword) {
          credentialsMatch = true;
          print("User login successful.");
          break;
        }
      }

      if (!credentialsMatch) {
        print("Incorrect email or password. Please try again.");
        userLogin();
      }
    }

    userLogin();
  }