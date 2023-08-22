import 'dart:async';

void main(List<String> args) async{
  onDataCar(data) {
    print(data);
  }

  onErrorCar(error) {
    print(error);
  }
  // 创建stream控制器
  StreamController<String> carStreamController = StreamController<String>();
  // 设置控制订阅的方法
  carStreamController.stream.listen(onDataCar, onError:onErrorCar);

  // sink
  StreamSink<String> carStreamSink = carStreamController.sink;

  // 通过sink往流水线添加数据
  carStreamSink.add('🚗');
  // 通过sink往流水线添加错误信息
  carStreamSink.addError('error~~');
}