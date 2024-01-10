// ignore_for_file: avoid_print

void main() {
//1-Write a dart program to check if the number is odd or even.
  int q1Number = 2;
  if (q1Number.isEven) {
    print("the number is even");
  } else {
    print("the number is odd");
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //2-Write a dart program to check whether a character is a vowel or consonant.
  String character = 'a'; // You can change this to test other characters

  // Checking if the character is a vowel
  if (character == 'a' ||
      character == 'e' ||
      character == 'i' ||
      character == 'o' ||
      character == 'u') {
    print('$character is a vowel');
  } else if (character.length == 1 &&
      character.runes.first >= 97 &&
      character.runes.first <= 122) {
    // Checking if the character is a lowercase letter
    print('$character is a consonant');
  } else {
    // If the character is not a lowercase letter
    print('$character is not a valid lowercase alphabet character');
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//3-Write a dart program to check whether a number is positive, negative, or zero.

  int number = 0; // You can change this number to test different cases

  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4-Write a dart program to print your name 100 times.

  String name = "Lama"; // Replace with your name
  for (int i = 0; i < 100; i++) {
    print("$i: $name");
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//5-Write a dart program to calculate the sum of natural numbers.

  int n =
      10; // You can change this to calculate the sum of first 'n' natural numbers

  // Method 1: Using the formula
  int sumUsingFormula = n * (n + 1) ~/ 2;
  print("Sum of first $n natural numbers using formula is: $sumUsingFormula");

  // Method 2: Using a loop
  int sumUsingLoop = 0;
  for (int i = 1; i <= n; i++) {
    sumUsingLoop += i;
  }
  print("Sum of first $n natural numbers using loop is: $sumUsingLoop");

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //6-Write a dart program to generate multiplication tables of 5.
  int q6Number = 5;
  int maxMultiplier = 10; // You can change this to extend the table

  for (int i = 1; i <= maxMultiplier; i++) {
    print("$q6Number x $i = ${q6Number * i}");
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //7-Write a dart program to generate multiplication tables of 1-9.
  for (int i = 1; i <= 9; i++) {
    print("Multiplication Table of $i");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print(""); // Adding an empty line for better readability
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //8-Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
  // Example numbers
  double num1 = 10.0;
  double num2 = 5.0;

  // Performing calculations
  double sum = add(num1, num2);
  double difference = subtract(num1, num2);
  double product = multiply(num1, num2);
  double quotient = divide(num1, num2);

  // Printing the results
  print('Addition: $num1 + $num2 = $sum');
  print('Subtraction: $num1 - $num2 = $difference');
  print('Multiplication: $num1 * $num2 = $product');
  print('Division: $num1 / $num2 = $quotient');

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //9-Write a dart program to print 1 to 100 but not 41.
  for (int i = 1; i <= 100; i++) {
    if (i != 41) {
      print(i);
    }
  }
}

// Function to add two numbers
double add(double a, double b) {
  return a + b;
}

// Function to subtract two numbers
double subtract(double a, double b) {
  return a - b;
}

// Function to multiply two numbers
double multiply(double a, double b) {
  return a * b;
}

// Function to divide two numbers
double divide(double a, double b) {
  if (b == 0) {
    print('Error: Division by zero');
    return double.infinity;
  }
  return a / b;
}
