import 'package:flutter/foundation.dart';

void selectionSort(List<int> array) {
  // Outer loop: Iterate through each element in the array
  for (var i = 0; i < array.length; i++) {
    var lowestNumberIndex = i;  // Assume the current index has the smallest number

    // Inner loop: Find the index of the smallest number in the remaining unsorted part
    for (var j = i + 1; j < array.length; j++) {
      // Check if the element at position 'j' is smaller than the element at the assumed smallest index
      if (array[j] < array[lowestNumberIndex]) {
        // If true, update the assumed smallest index to the current index 'j'
        lowestNumberIndex = j;
      }
    }

    // Swap elements if the assumed smallest index is different from the initial index 'i'
    if (lowestNumberIndex != i) {
      // Temporary variable 'temp' is used for swapping
      var temp = array[i];
      array[i] = array[lowestNumberIndex];
      array[lowestNumberIndex] = temp;
    }
  }
}

void main() {
  // Example array to demonstrate the sorting
  List<int> myArray = [64, 25, 12, 22, 11];
  
  // Display the original array
  if (kDebugMode) {
    print("Original Array: $myArray");
  }
  
  // Call the selectionSort function to sort the array
  selectionSort(myArray);

  // Display the sorted array
  if (kDebugMode) {
    print("Sorted Array: $myArray");
  }
}



// Selection Sort is a simple sorting algorithm that repeatedly selects
// the smallest (or largest) element from the unsorted part of the array
// and swaps it with the first unsorted element. This process is repeated
// until the entire array is sorted. While simple, it is not the most
// efficient for large datasets.

// Time Complexity: Selection Sort has a worst-case and average-case time
// complexity of O(n^2), where n is the number of elements in the array.
// This is because, for each element in the array, we need to iterate
// through the remaining unsorted part to find the smallest element.