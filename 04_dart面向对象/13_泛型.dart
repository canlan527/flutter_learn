// 泛型： 带参数的类型
void main(List<String> args) {
  var engine = V8(518);
  var defender = Car(engine);

  print(defender.engine?.horsePower); // 518
}

class Car<T> {
  T? engine;
  Car(this.engine);
}

class V8 {
  int? horsePower;
  V8(this.horsePower);
}

