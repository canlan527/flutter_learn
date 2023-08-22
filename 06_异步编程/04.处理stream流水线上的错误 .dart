import 'dart:async';

void main(List<String> args) {
  Future<String> getCar() async {
    await Future.delayed(Duration(seconds: 3));
    throw 'Error~~';
    return '🚗';
  }

  Stream<String> carStream = Stream.fromFuture(getCar());
  
  void onDataCar(data) {
    print(data);
  }
  void onErrorCar(error) {
    print(error);
  }
  carStream.listen(onDataCar, onError: onErrorCar);
}