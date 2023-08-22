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

  // 添加控制数据
  carStreamController.add('🚗');
  // 添加控制的错误数据
  carStreamController.addError('error~~~');
  
}