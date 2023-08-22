import 'dart:async';
void main(List<String> args) async {
  Future<String> getCar() async {
    // 延迟3秒输出
    await Future.delayed(Duration(seconds: 3));
    return '🚗';
  }

  // Stream 类型:数据流水线的意思，时不时会产生一些数据 Stream会把新生产出来的数据交给定义它的变量
  // 创建Stream，通过Stream.fromFuture创建
  Stream<String> carStream =  Stream.fromFuture(getCar());
  // 使用流水线上的数据: listen
  carStream.listen((data) {
    print(data);
  });

}