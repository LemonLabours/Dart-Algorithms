// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  //1-Write a program to print your name in Dart.
  var name = 'Lama';
  print('my name is $name');

  num prize = 10;
  String withoutRawString = "The value of prize is \t $prize"; // regular String
  String withRawString = r"The value of prize is \t $prize"; // raw String

  print("Without Raw: $withoutRawString"); // regular result
  print("With Raw: $withRawString");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //2-Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.
  var q2Name = 'John Doe';
  print(
      'my name is \'$q2Name\' with single queotes and "$q2Name" with double quotes');

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //3-Declare constant type of int set value 7.
  const num1 = 7;
  const num2 = 7.7777777;
  print(num1);
  print(num2.toStringAsFixed(2));

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //4-Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100
  // Input for principal amount
  double? principal = 5;
  print("Principal amount:$principal");

  // Input for time in years

  double? time = 6;
  print("Time (in years):$time");

  double? rate = 2;
  print(" Rate of Interest is:$rate");

  // Calculating simple interest
  double simpleInterest = (principal * time * rate) / 100;

  // Output
  print("Simple Interest: \$${simpleInterest.toStringAsFixed(2)}");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//5-Write a program to print a square of a number using user input.

  print("Enter number:");
  int? q5Number = int.parse(stdin.readLineSync()!);
  int? squaredNumber = q5Number * q5Number;
  print("The entered number is $squaredNumber");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//6-Write a program to print full name of a from first name and last name using user input.

  print("Enter first name:");
  String? firstName = stdin.readLineSync()!;
  print(firstName);
  print("Enter last name:");
  String? lastName = stdin.readLineSync()!;
  print(lastName);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //7-Write a program to find quotient and remainder of two integers.
  // Define two integers
  int q7Number1 = 15;
  int q7Number2 = 4;

  // Calculate quotient and remainder
  int quotient = q7Number1 ~/ q7Number2;
  int remainder = q7Number1 % q7Number2;

  // Display the result
  print("Quotient: $quotient");
  print("Remainder: $remainder");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//8-Write a program to swap two numbers.
  int q8Number1 = 15;
  int q8Number2 = 4;

  print("Before swapping: a = $q8Number1, b = $q8Number2");

  int swapper = q8Number1;
  q8Number1 = q8Number2;
  q8Number2 = swapper;
  print("After swapping: a = $q8Number1, b = $q8Number2");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //9-Write a program in Dart to remove all whitespaces from String.
  String stringWithWhitespaces = "Hello World, this is a test string.";

  // Using regular expression to remove all whitespaces
  String stringWithoutWhitespaces =
      stringWithWhitespaces.replaceAll(RegExp(r'\s+'), '');

  print("Original String: '$stringWithWhitespaces'");
  print("String without whitespaces: '$stringWithoutWhitespaces'");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //10-Write a Dart program to convert String to int.
  String q10String = "33";
  int q10Int = int.parse(q10String);
  print(q10Int.runtimeType);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //11-Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people

  // Example data
  double totalBillAmount = 150.0; // total bill amount in dollars
  int numberOfPeople = 3; // number of people to split the bill

  // Calculating split amount
  double splitAmount = totalBillAmount / numberOfPeople;

  // Displaying the result
  print("Total Bill Amount: \$${totalBillAmount.toStringAsFixed(2)}");
  print("Number of People: $numberOfPeople");
  print("Each Person Should Pay: \$${splitAmount.toStringAsFixed(2)}");

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //12-Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed)

  double distanceToOfficeKm = 25; // distance in kilometers
  double speedKmPerHour = 40; // speed in kilometers per hour

  // Calculating time in hours
  double timeHours = distanceToOfficeKm / speedKmPerHour;

  // Converting time to minutes
  double timeMinutes = timeHours * 60;

  // Displaying the result
  print("Time taken to reach office: ${timeMinutes.toStringAsFixed(2)}");
}
