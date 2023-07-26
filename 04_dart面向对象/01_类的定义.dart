void main(List<String> args) {
  var p = Person('coder', 18);
}

class Person {
  String name = '';
  int age = 0;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 语法糖
  Person(this.name, this.age);
}