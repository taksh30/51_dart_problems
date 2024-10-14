void main() {
  // Task 1: Print your name
  print('Task 1');
  String name = 'Taksh';
  print(name);

  // Task 2: Convert a string statement into uppercase
  print('Task 2');
  String statement = 'Hello, I am Taksh';
  print(statement.toUpperCase());

  // Task 3: Given the double below, assign
  // it to a new variable where its
  //rounded to the nearest integer
  print('Task 3');
  double d = 4.2;
  print(d.round());

  // Task 4: Given the string below, replace all the
  // "x"s with a blank string
  print('Task 4');
  String str = "Uxh oxh, thexre's a bunxch of txypos";
  print(str.replaceAll('x', ''));

  // Task 5: Given the variables below, find data type
  print('Task 5');
  var first = 'Have a nice day!!';
  var second = 0;
  var third = 2.4;
  var fourth = true;
  print(first.runtimeType);
  print(second.runtimeType);
  print(third.runtimeType);
  print(fourth.runtimeType);

  // Task 6: Show two different methods of
  // grabbing the last item in the list
  print('Task 6');
  List list = ['A', 'B', 'C', 'D', 'E'];
  print(list.last);
  print(list[list.length - 1]);

  // Task 7: Find common element from two sets
  print('Task 7');
  Set footballTeam = {'Gloria', 'Phil', 'Claire'};
  Set playCast = {'Claire', 'Haley', 'Luke'};
  print(footballTeam.intersection(playCast));

  // Task 8: Figure out how to remove key Claire from the Map
  // and set it's value (5) as a variable
  print('Task 8');
  Map modernFamily = {
    // Key:    Value
    'Phil': 10,
    'Claire': 5,
    'Jay': 3
  };
  int value = modernFamily.remove('Claire');
  print(value);

  // Task 9: Give examples of pre increment and post increment
  print('Task 9');
  int alpha = 0;
  int beta = 0;

  // EXAMPLE ONE
  ++alpha;
  print('Alpha is: $alpha');

  beta++;
  print('Beta is $beta');

  //  EXAMPLE TWO
  //  Now what happens if we're doing a reassignment?
  //  Increment alpha BEFORE beta gets its value with ++ BEFORE the var
  beta = ++alpha;
  print('Alpha0 is: $alpha');
  print('Beta0 is $beta');

  //  EXAMPLE THREE
  //  Now what happens if we're doing a reassignment?
  //  Increment alpha AFTER beta gets its value with ++ AFTER the var
  beta = alpha++;
  print('Alpha1 is: $alpha');
  print('Beta1 is $beta');

  // Task 10: Use if, else if , and else statements to
  // print out statements for the age supplied.
  // If the age is under 18, print "You are a minor"
  // If the age is between 18-65 print "You are an adult"
  // If the age is over 65, print "Your are a senior"
  print('Task 10');

  int age = 19;

  if (age < 18) {
    print('You are a minor');
  } else if (age >= 18 && age <= 65) {
    print('You are an adult');
  } else {
    print('You are a senior citizen');
  }
}
