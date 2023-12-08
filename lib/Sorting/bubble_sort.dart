import 'package:flutter/foundation.dart';

void bubbleSort(List<int> list) {
  int n = list.length; // The total number of elements in the list
  bool swapped;

  do {
    swapped = false; // Initialize swapped as false at the start of each pass
    for (int i = 1; i < n; i++) {
      // Iterate through the list
      if (list[i - 1] > list[i]) {
        // Compare adjacent elements
        // Swap elements if they are in wrong order
        int temp = list[i - 1]; // Temporarily store the value of list[i - 1]
        list[i - 1] = list[i]; // Assign the value of list[i] to list[i - 1]
        list[i] = temp; // Assign the stored value in temp to list[i]
        swapped = true; // Mark swapped as true if any swap occurred
      }
    }
    // After each pass, the largest element in the remaining unsorted part
    // gets bubbled up to its correct position, so reduce n by 1
    n--;
  } while (swapped); // Continue passes until no swaps occur
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  if (kDebugMode) {
    print('Before sorting: $numbers');
  }
  bubbleSort(numbers);
  if (kDebugMode) {
    print('After sorting: $numbers');
  }
}
