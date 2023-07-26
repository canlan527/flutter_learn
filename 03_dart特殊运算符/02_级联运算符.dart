void main(List<String> args) {
  // var p = Person();
  // p.name = 'coder';
  // p.run();
  // p.eat();
  // print(p.name);

  // ---
  // 级联运算符 ..
  // var p = Person()
  //           ..name = 'coder'
  //           ..eat()
  //           ..run();
}

class Person {
  String name = '';

  void run() {
    print('running~');
  }

  void eat() {
    print('eatting');
  }
}