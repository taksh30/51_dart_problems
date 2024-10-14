import 'dart:math';

void main() {
  // Task 41: Write a dart program to implement binary search on a sorted list
  print('Task 41');
  int binarySearch(List<int> list, int targetNum) {
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (list[mid] == targetNum) return mid;
      if (list[mid] < targetNum) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }

  print(binarySearch([1, 2, 3, 4, 5], 2));

  // Task 42: Write a dart program to merge two sorted lists into a single sorted list
  print('Task 42');
  List<int> mergedSortedLists(List<int> list1, List<int> list2) {
    List<int> merged = [];
    int i = 0, j = 0;
    while (i < list1.length && j < list2.length) {
      if (list1[i] < list2[j]) {
        merged.add(list1[i]);
        i++;
      } else {
        merged.add(list2[j]);
        j++;
      }
    }
    merged.addAll(list1.sublist(i));
    merged.addAll(list2.sublist(j));
    return merged;
  }

  print(mergedSortedLists([1, 2, 3, 4, 5], [6, 7, 8, 9]));

  // Task 43: Write a dart program to flatten a nested list
  print('Task 43');
  List<dynamic> flattenList(List<dynamic> list) {
    List<dynamic> flatList = [];
    for (var item in list) {
      if (item is List) {
        flatList.addAll(flattenList(item));
      } else {
        flatList.add(item);
      }
    }
    return flatList;
  }

  print(flattenList([
    1,
    [
      23,
      34,
      [
        3,
        [9]
      ],
      [67]
    ],
    [
      78,
      [
        [
          [
            8,
            [8, 0, 89]
          ]
        ]
      ]
    ]
  ]));

  // Task 44: Write a dart program to check if a list is sorted in ascending order
  print('Task 44');
  bool isSorted(List<int> list) {
    for (int i = 1; i < list.length; i++) {
      if (list[i] < list[i - 1]) {
        return false;
      }
    }
    return true;
  }

  print(isSorted([6, 2, 3, 4, 5]));

  // Task 45: Write a dart program to implement the Bubble Sort algorithm
  print('Task 45');
  List<int> bubbleList = [64, 34, 25, 12, 22, 11, 90];
  bubbleSort(bubbleList);
  print(bubbleList);

  // Task 46: Write a dart program to implement the Selection Sort algorithm
  print('Task 46');
  List<int> selectionList = [64, 25, 12, 22, 11];
  selectionSort(selectionList);
  print(selectionList);

  // Task 47: Write a dart program to implement the Insertion Sort algorithm
  print('Task 47');
  List<int> insertionList = [12, 11, 13, 5, 6];
  insertionSort(insertionList);
  print(insertionList);

  // Task 48: Write a dart program to find the kth largest element in an unsorted list
  print('Task 48');
  int findKthLargest(List<int> list, int k) {
    list.sort();
    return list[list.length - k];
  }

  print(findKthLargest([4, 2, 7, 2, 89, 3, 67], 4));

  // Task 49: Write a dart program to find the missing number in an array of numbers from 1 to n
  print('Task 49');
  int findMissingNumber(List<int> list) {
    int n = list.length + 1;
    int total = (n * (n + 1)) ~/ 2;
    int sum = list.reduce((a, b) => a + b);
    return total - sum;
  }

  print(findMissingNumber([1, 2, 3, 4, 5, 6]));

  // Task 50: Write a dart program to find the length of the longest increasing subsequence (LIS)
  print('Task 50');
  int lengthOfLIS(List<int> nums) {
    if (nums.isEmpty) return 0;
    List<int> dp = List.filled(nums.length, 1);
    for (int i = 1; i < nums.length; i++) {
      for (int j = 0; j < i; j++) {
        if (nums[i] > nums[j]) {
          dp[i] = dp[i] > dp[j] + 1 ? dp[i] : dp[j] + 1;
        }
      }
    }

    return dp.reduce((a, b) => a > b ? a : b);
  }

  print(lengthOfLIS([10, 9, 2, 5, 3, 7, 101, 18]));

  // Task 51: Write a dart program to solve the 0/1 Knapsack problem using dynamic programming
  print('Task 51');
  int knapsack(int W, List<int> weights, List<int> values, int n) {
    List<List<int>> dp = List.generate(n + 1, (_) => List.filled(W + 1, 0));

    for (int i = 1; i <= n; i++) {
      for (int w = 0; w <= W; w++) {
        if (weights[i - 1] <= w) {
          dp[i][w] =
              max(dp[i - 1][w], dp[i - 1][w - weights[i - 1]] + values[i - 1]);
        } else {
          dp[i][w] = dp[i - 1][w];
        }
      }
    }

    return dp[n][W];
  }

  List<int> weights = [1, 3, 4, 5];
  print(knapsack(7, weights, [1, 4, 5, 7], weights.length));
}

// Task 45
void bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

// Task 46
void selectionSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;
  }
}

// Task 47
void insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}
