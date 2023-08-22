import 'dart:async';
Future<void> main(List<String> args) async {
  // 定义异步函数
  Future<String> getCar() async {
    return '🚗';
  }

  var c1 = getCar(); 
  // print(c1); // Instance of 'Future<String>'
  
  // 使用异步函数提供的值
  // 方法一： await
  var c2 = await getCar(); 
  // print(c2);

  // 方法二： 使用then调用
  getCar().then((value) => print(value));
}