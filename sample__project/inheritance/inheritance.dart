class Animal {
  void sayHello() {
    print("Animal says HELLO");
  }
}

//No interface in dart so we use abstract class for interface
abstract class A {
  sayHello();
}

class B implements A {
  sayHello() {
    print('Nothing');
  }
}

class Human extends Animal {
  void sayHello() {
    super.sayHello();
    print("Human says Hello");
  }
}

void main() {
  Human h = new Human();
  h.sayHello();
  B b = new B();
  b.sayHello();
}
