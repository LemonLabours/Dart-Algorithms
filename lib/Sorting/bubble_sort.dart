import 'package:flutter/foundation.dart';
// Bubble Sort is a simple sorting algorithm that repeatedly steps through the list,
// compares adjacent elements, and swaps them if they are in the wrong order.
// The pass through the list is repeated until the list is sorted.
// Although bubble sort is easy to understand and implement, it is not efficient for large datasets,
// especially compared to more advanced algorithms like quicksort or mergesort.

// Time Complexity: Bubble Sort has a worst-case and average-case time complexity of O(n^2),
// where n is the number of elements in the list. This is because, in the worst case,
// we may need to make n passes through the list, and for each pass, we compare and potentially swap
// each pair of adjacent elements. The best-case time complexity is O(n) when the list is already sorted

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
