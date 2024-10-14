import 'dart:io';
import 'dart:math';

void main() {
  // Task 31: Create a dart program that generates a random number and asks the user to guess it
  print('Task 31');
  void guessingGame() {
    int numToGuess = Random().nextInt(100);
    int guess = -1;
    while (guess != numToGuess) {
      print('Guess a number between 0 and 100');
      guess = int.parse(stdin.readLineSync() ?? '');
      if (guess < numToGuess) {
        print('Too low');
      } else if (guess > numToGuess) {
        print('Too high');
      }
    }
    print('You got it');
  }

  // Task 32: Write a dart function that takes a string as input and returns whether its a valid email address
  print('Task 32');
  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  print(validateEmail('taksh@gmail.com'));

  // Task 33: Write a dart function that takes a list of numbers and an integer as input, and rotates the list by that integer
  print('Task 33');
  List<int> rotateList(List<int> numbers, int rotations) {
    return numbers.sublist(rotations) + numbers.take(rotations).toList();
  }

  print(rotateList([1, 4, 7, 9, 2, 5], 2));

  // Task 34: Write a dart function that takes a list of numbers as input and returns the most frequently occurring element
  print('Task 34');
  int freqElement(List<int> numbers) {
    Map<int, int> freq = <int, int>{};
    for (var num in numbers) {
      freq[num] = (freq[num] ?? 0) + 1;
    }
    int maxFrequency = freq.values.reduce((a, b) => a > b ? a : b);
    return freq.keys.firstWhere((element) => freq[element] == maxFrequency);
  }

  print(freqElement([1, 4, 6, 7, 8, 9, 4, 6, 4]));

  // Task 35: Create a dart function that generates a random password of a given length
  print('Task 35');
  String generatePassword(int length) {
    return List.generate(
      length,
      (index) => Random().nextInt(33) + 89,
    )
        .map(
          (e) => String.fromCharCode(e),
        )
        .join();
  }

  print(generatePassword(10));

  // Task 36: Write a dart function to check if a given string is a valid URL
  print('Task 36');
  bool isValidUrl(String url) {
    return Uri.parse(url).isAbsolute;
  }

  print(isValidUrl('https://taksh30.github.io/'));

  // Task 37: Write a dart program to find the factorial of a number
  print('Task 37');
  int getFactorial(int n) {
    if (n == 0) return 1;
    return n * getFactorial(n - 1);
  }

  print(getFactorial(5));

  // Task 38: Write a dart program to check if a year is a leap year
  print('Task 38');
  bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  print(isLeapYear(2024));

  // Task 39: Write a dart program to print the multiplication table of a number
  print('Task 39');
  int num = 5;
  for (int i = 1; i <= 10; i++) {
    print('$num x $i = ${num * i}');
  }

  // Task 40: Write a dart program to find the second largest element in a list
  print('Task 40');
  List<int> numbers = [10, 5, 20, 12, 6];
  numbers.sort();
  print(numbers[numbers.length - 2]);
}
