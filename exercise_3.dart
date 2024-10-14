void main() {
  // Task 21: Create a function that takes in a list of strings and returns a new list with all strings in uppercase
  print('Task 21');
  List<String> convertToUppercase(List<String> strings) {
    List<String> uppercaseStrings = [];
    for (var str in strings) {
      uppercaseStrings.add(str.toUpperCase());
    }
    return uppercaseStrings;
  }

  print(convertToUppercase(['hello', 'i am', 'taksh']));

  // Task 22: Create a function that takes in a list of integers and returns the highest number in the list
  print('Task 22');
  int findHighest(List<int> numsList) {
    int highestNum = numsList[0];
    for (var num in numsList) {
      if (num > highestNum) {
        highestNum = num;
      }
    }
    return highestNum;
  }

  print(findHighest([23, 45, 86, 98, 107, 2, 56, 90]));

  // Task 23: Create a function that takes in a string and returns true if the string contains the letter 'a', false otherwise
  print('Task 23');
  bool contains(String str) {
    return str.contains('a');
  }

  print(contains('Taksh'));

  // Task 24: Create a function that takes in a list of integers and returns the product of all numbers in the list
  print('Task 24');
  int getProduct(List<int> numbers) {
    int product = 1;
    for (int number in numbers) {
      product *= number;
    }
    return product;
  }

  print(getProduct([2, 4, 6, 8, 9]));

  // Task 25: Create a function that takes in an integer and returns true if it's a prime number, false otherwise
  print('Task 25');
  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  print(isPrime(23));

  // Task 26: Write a dart function that takes a string as input and returns it in reverse order
  print('Task 26');
  String reverseString(String str) {
    return str.split('').reversed.join('');
  }

  print(reverseString('Taksh'));

  // Task 27: Write a dart program that generates the first n numbers in the Fibonacci sequence
  print('Task 27');
  List<int> fibonacciSequence(int n) {
    List<int> series = [0, 1];
    while (series.length < n) {
      series.add(series[series.length - 1] + series[series.length - 2]);
    }
    return series;
  }

  print(fibonacciSequence(7));

  // Task 28: Create a dart function that takes a string as input ad return the number of vowels it contains
  print('Task 28');
  int countVowels(String str) {
    return str.replaceAll(RegExp('[^aeiouAEIOU]'), '').length;
  }

  print(countVowels('aeioh'));

  // Task 29: Write a dart program that converts a temperature from Celsius to Fahrenheit
  print('Task 29');
  double convertCelsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  print(convertCelsiusToFahrenheit(32));

  // Task 30: Write a dart program that converts a temperature from Fahrenheit to Celsius
  print('Task 30');
  double convertFahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  print(convertFahrenheitToCelsius(89.6));
}
