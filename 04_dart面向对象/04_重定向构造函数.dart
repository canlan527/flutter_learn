void main(List<String> args) {
   var p = Person('coder');
   print(p.name);
}

class Person {
  String name;
  int age;

  // 重定向Person构造函数
  Person(String name): this._internal(name, 0);

  Person._internal(this.name, this.age);
}