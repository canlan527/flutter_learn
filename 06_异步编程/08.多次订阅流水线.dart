import 'dart:async';
void main(List<String> args) {
  // 创建多个订阅函数
  onDataCar(data) {
    print('onDataCar: $data');
  }

  onErrorCar(error) {
    print('onErrorCar: $error');
  }

  onData(data) {
    print('onData: $data');
  }

  onError(error) {
    print('onError: $error');
  }

  // 创建流水线控制器 
  StreamController<String> carStreamController = StreamController<String>.broadcast();
  // 多次订阅流水线
  carStreamController.stream.listen(onDataCar, onError: onErrorCar);
  carStreamController.stream.listen(onData, onError: onError);


  // 使用 sink
  StreamSink<String> carStreamSink = carStreamController.sink;

  carStreamSink.add('小汽车');
  carStreamSink.addError('error~~~');
}