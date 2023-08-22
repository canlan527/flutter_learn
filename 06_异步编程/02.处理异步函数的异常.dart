import 'dart:async';

Future<void> main(List<String> args) async {
  // 定义异步函数
  Future<String> getCar() async {
    throw '错误了';
  }

  // await 捕获错误
  try {
    var c1 = await getCar();
    print(c1);
  } catch (e) {
    print(e); // 错误了
  }

  // then catch 捕获错误
  getCar().then((value) => print(value)).catchError((e) {
    print(e); // 错误了
  });
}
