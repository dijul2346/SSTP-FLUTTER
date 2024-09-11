void main() {
  //addition();
  // int a = 10, b = 20;
  //substraction(a, b);
  // int c = multiplication();
  //print(c);
  //double d = div(a, b);
  // print(d);
  //addition(a: a, b: b);
  int p = 10000, n = 5;
  double r = 0.1;
  si(p: p, n: n, r: r);
  print('Before calling future function');
  functionA();
  print('After calling future function');
}

Future<void> functionA() async {
  await Future.delayed(Duration(seconds: 5));
  print('Inside Future Function');
}

//void addition() {
//int a = 10, b = 20;
// print(a + b);
//}

//void addition({int ?a, int ?b}) {}

//void substraction(int a, int b) {
// print(a - b);
//}

int multiplication() {
  int a = 10, b = 5;
  return a * b;
}

double div(int a, int b) {
  double c = a / b;
  c.toDouble();
  return c;
}

void si({required int p, int? n, required double r}) {
  if (n == null) {
    n = 1;
  }
  double si = p * n * r;
  print('Simple interest is : ');
  print(p + si);
}
//write aprogram to calculate simple interest


