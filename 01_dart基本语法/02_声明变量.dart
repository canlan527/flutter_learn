import 'dart:convert';

void main(List<String> args) {
  // 1. 明确的声明
  String name = 'coderwhy';

  // 2.类型推导(var/final/const)
  // 类型推导的方式虽然没有明确声明变量的类型，但是变量是有自己的明确的类型
  // 2.1 var
  var age = 20; // 隐式 int 类型
  // age = 'abc'; // 报错
  // 可以修改
  age = 30;

  // 2.2 final声明常量
  final height = 1.88;
  // height = 2.00; // 报错

  // 2.3 const
  const address = '北京';
  // address = '广州' // 不能修改

  // 2.4 final 和 const 的区别
  // const 必须赋值常量值(编译期间需要有一个确定的值)
  // final 可以通过计算/函数获取一个值(运行期间来确定一个值)

  // const date1 = DateTime.now(); // 报错
  // final date2 = DateTime.now(); // 不报错

  // final p1 = Person('why');
  // final p2 = Person('why');
  // 判断 p1 是否等于 p2
  // print(identical(p1, p2));



}

// class Person {
//   String name;

//   // Person (String name) {
//   //   this.name = name;
//   // }
// }
