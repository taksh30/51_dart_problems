void main() {
  // Task 11: Print the loop list, set & map
  print('Task 11');
  List list = ['a', 'b', 'c'];
  Set set = {'x', 'y', 'z'};
  Map map = {'a': 0, 'b': 1, 'c': 2};

  // LOOP LIST
  for (final item in list) {
    print(item);
  }
  print('break');
  // LOOP SET
  for (final item in set) {
    print(item);
  }
  print('break');
  //LOOP MAP via .keys
  for (final key in map.keys) {
    print(key);
    print(map[key]);
    print('\n');
  }

  // Task 12: Print even numbers from the list
  print('Task 12');
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var item in myList) {
    if (item % 2 == 0) {
      print(item);
    }
  }

  // Task 13: Write a Dart program that prints the
  // first 10 positive even numbers using a while loop
  print('Task 13');
  int count = 1;
  int num = 0;

  while (count <= 10) {
    num += 2;
    print(num);
    count++;
  }

  // Task 14: Give example of break and continue
  print('Task 14');
  print('Break Output');
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
  print('Continue Output');
  for (var i = 0; i <= 5; i++) {
    if (i == 3) {
      continue;
    } else {
      print(i);
    }
  }

  // Task 15: Create a Dart function that takes two named parameters,
  // width and height, and returns the area of a rectangle
  // with those dimensions
  print('Task 15');
  double calculateArea({double width = 0, double height = 0}) {
    return width * height;
  }

  double result = calculateArea(width: 5, height: 2);
  print(result);

  // Task 16: Write a dart function to calculate sum of
  // numbers of a list
  print('Task 16');
  List numList = [1, 2, 3, 4, 5, 6, 7, 8];
  int sumOfNums = 0;
  for (int num in numList) {
    sumOfNums += num;
  }
  print(sumOfNums);

  // Task 17: Create a function that takes in two integers and returns their sum
  print('Task 17');
  int add(int a, int b) {
    return a + b;
  }

  print(add(23, 45));

  // Task 18: Create a function that takes in a string and returns its length
  print('Task 18');
  int getStringLength(String str) {
    return str.length;
  }

  print(getStringLength('I am Batman'));

  // Task 19: Create a function that takes in a list of integers and returns the sum of all even numbers in the list
  print('Task 19');
  int sumOfEvens(List<int> list) {
    int sum = 0;
    for (var num in list) {
      if (num % 2 == 0) {
        sum += num;
      }
    }
    return sum;
  }

  print(sumOfEvens([5, 6, 7, 8, 9, 10]));

  // Task 20: Create a function that takes in an integer and returns true if it's even and false otherwise
  print('Task 20');
  bool isEven(int number) {
    return number % 2 == 0;
  }

  print(isEven(4));
}
