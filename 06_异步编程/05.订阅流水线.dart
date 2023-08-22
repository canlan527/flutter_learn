import 'dart:async';

void main(List<String> args) async {
  Future<String> getCar() async {
    await Future.delayed(Duration(seconds: 3));
    return '🚗';
  }

  Stream<String> streamCar = Stream.fromFuture(getCar());

  onDataCar(data) {
    print(data);
  }

  onErrorCar(error) {
    print(error);
  }

  // 订阅流水线
  StreamSubscription<String> carStreamSubscript =
      streamCar.listen(onDataCar, onError: onErrorCar);

  // 暂停流水钱
  carStreamSubscript.pause();
  print('暂停订阅');
  // 等待3秒
  await Future.delayed(Duration(seconds: 3));
  // 恢复流水线
  print('恢复订阅');
  carStreamSubscript.resume();
}
