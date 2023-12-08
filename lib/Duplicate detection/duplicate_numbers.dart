// Function to check if a list of numbers contains duplicate values
import 'package:flutter/foundation.dart';

bool containsDuplicateNumbers(List<int> numbers) {
  // Create a Set to store unique numbers encountered
  Set<int> uniqueNumbers = {};

  // Iterate through the list of numbers
  for (int num in numbers) {
    // Check if the current number is already in the Set
    if (uniqueNumbers.contains(num)) {
      // If a duplicate is found, return true
      return true;
    } else {
      // If not a duplicate, add the number to the Set
      uniqueNumbers.add(num);
    }
  }

  // If no duplicates are found, return false
  return false;
}

void main() {
  List<int> numbersWithDuplicates = [1, 2, 3, 4, 2, 5];
  bool hasDuplicates = containsDuplicateNumbers(numbersWithDuplicates);

  if (hasDuplicates) {
    if (kDebugMode) {
      print('The list contains duplicate numbers.');
    }
  } else {
    if (kDebugMode) {
      print('The list does not contain duplicate numbers.');
    }
  }
}
