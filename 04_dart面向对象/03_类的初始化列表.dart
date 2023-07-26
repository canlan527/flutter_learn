void main(List<String> args) {
  var p = Person('jxz', age: 18);
  print(p.age); // 18

  var p1 = Person('coder');
  print(p1.age); // 0
}

class Person {
  final String name;
  final int age;
  // 初始化age
  Person(this.name, {int age = 0}) : this.age = age ?? 10 {}
}
