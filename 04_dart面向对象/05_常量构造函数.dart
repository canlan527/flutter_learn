void main(List<String> args) {
  const p1 = Person('CODER');
  const p2 = Person('CODER');

  print(identical(p1, p2));
}
/**
 * 常量构造函数 
 * 使用const 定义类里的构造函数，并且多次new构造函数都是同一个，这是flutter做的优化
 */

class Person {
  final String name;

  const Person(this.name);
}