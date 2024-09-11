void main() {
  int age = 30;
  double temperature = 23.4;

  num mark1 = 100;
  num mark2 = 200;

  num average = 45.2;
  String name = 'MITS';
  String message = 'He is a good boy';
  String address = '''
  MITS
  VARIKOLI
  ''';

  String escape_sequence = "Test Escape\"Sequence";
  bool toogle = true;

  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> names = ['Andrew', 'Mark', 'Larry'];

  print(age);
  print(temperature);
  print(mark1);
  print(average);
  print(name);
  print(message);
  print(address);
  print(escape_sequence);
  print(toogle);
  print(numbers);
  print(names);

  print('My age is $age');
  print('The total mark is ${mark1 + mark2}');

  int n = 3;
  if (n % 2 == 0) {
    print('$num is an even number');
  } else {
    print('$num is an odd Number');
  }
}
