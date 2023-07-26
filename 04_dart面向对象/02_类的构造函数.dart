void main(List<String> args) {
  // new 命名构造函数
  var p = Person.withNameAgeHeight('coder', 18, 1.88);

  //
  // p.toString();
  // object 和 dynamic的区别
  // Object调用方法时，编译时会报错
  // dynamic调用方法时，编译时不会报错，但是运行时会存在安全隐患
  // 明确声明
  // dynamic obj = 'coder';
  // print(obj.substring(1)); // 编译不报错，运行报错

  dynamic obj = '123';
  print(obj.substring(1)); // 编译不报错，运行报错

  var p1 = Person.fromMap({'name': 'coder', 'age': 20, 'height': 1.88});
  print(p1);
}

class Person {
  String name = '';
  int age = 0;
  double height = 0;

  // Person(this.name, this.age);
  // Person(this.name, this.age, {this.height = 0});

  // Person(this.name, this.age, this.height);

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
    this.height = map['height'];
  }
  // 重写tostring方法
  @override
  String toString() {
    // TODO: implement toString
    return '$name $age $height';

  }
}
