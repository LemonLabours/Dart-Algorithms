// ignore_for_file: avoid_print

import 'dart:math';

void main() {
  printName();
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  int start = 1; // Start of the interval
  int end = 20; // End of the interval

  printEvenNumbers(start, end);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  var name = "hoho";
  greet(name);

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  int passwordLength = 12; // You can change the length as needed
  String password = generatePassword(passwordLength);
  print('Random Password: $password');

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  double radius = 5.0; // You can change the radius as needed
  double area = calculateCircleArea(radius);
  print('The area of the circle with radius $radius is $area');

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);
  print("Original String: $originalString");
  print("Reversed String: $reversedString");

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  powerCalculations();

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  int sum = add(5, 10); // Example usage of the add function
  print("Sum: $sum");

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  int largest = maxNumber(5, 10, 3); // Example usage of the maxNumber function
  print("Largest number: $largest");

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  int number = 4; // Example number
  bool result = isEven(number);
  print("$number is even: $result");

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  createUser("John Doe", 30); // Example usage with default isActive
  createUser("Jane Doe", 25,
      isActive: false); // Example usage with isActive set to false

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  double area1 =
      calculateArea(length: 5, width: 3); // Both length and width provided
  double area2 =
      calculateArea(length: 4); // Only length provided, width defaults to 1
  double area3 = calculateArea(); // Both length and width use default values

  print("Area of rectangle with length 5 and width 3: $area1");
  print("Area of rectangle with length 4 and width 1: $area2");
  print("Area of rectangle with length 1 and width 1: $area3");
}
//1-Write a program in Dart to print your own name using function.

void printName() {
  print("lama");
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//2-Write a program in Dart to print even numbers between intervals using function.
void printEvenNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//3-Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.

void greet(String name) {
  print("greetings $name");
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4-Write a program in Dart that generates random password.

String generatePassword(int length) {
  const String letters = 'abcdefghijklmnopqrstuvwxyz';
  const String capitalLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String specialCharacters = '@#%^&*!()';

  String chars = '$letters$capitalLetters$numbers$specialCharacters';
  Random random = Random();

  return List.generate(length, (_) => chars[random.nextInt(chars.length)])
      .join('');
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//5-Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
double calculateCircleArea(double radius) {
  return pi * radius * radius;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//6-Write a program in Dart to reverse a String using function.

String reverseString(String str) {
  return String.fromCharCodes(str.runes.toList().reversed);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//7-Write a program in Dart to calculate power of a certain number. For e.g 5^3=125

void powerCalculations() {
  int base = 5;
  int exponent = 3;
  int result = pow(base, exponent)
      .toInt(); // pow returns a double, so we convert it to an integer
  print("$base^$exponent = $result");
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//8-Write a function in Dart named add that takes two numbers as arguments and returns their sum.
int add(int num1, int num2) {
  return num1 + num2;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//9-Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
int maxNumber(int num1, int num2, int num3) {
  return [num1, num2, num3].reduce((a, b) => a > b ? a : b);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//10-Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
bool isEven(int number) {
  return number % 2 == 0;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//11-Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
void createUser(String name, int age, {bool isActive = true}) {
  print('User Created: Name: $name, Age: $age, IsActive: $isActive');
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//12-Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.

double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}
