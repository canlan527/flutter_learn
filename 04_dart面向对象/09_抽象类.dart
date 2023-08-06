void main(List<String> args) {
  final r = Rectangle();
  final res = r.getArea();
  print(res);

  // 通过工厂构造函数实例化Shape
  final s2 = Shape();
  // external关键字，可以将方法的声明和实现进行分离  @patch 补丁
  // 针对不同的平台进行不同的实现，IOS  Android
}

// 定义抽象类
abstract class Shape {
  num getArea(); // 抽象类的抽象方法，不包含具体实现

  // 普通方法
  String getName() {
    return '形状';
  }

  // 抽象类不能直接实例化，要通过factory进行实例化
  factory Shape() {
    return Rectangle(); // 实例化抽象类的子类
  }
}

// 抽象类的子类
// 如果继承了抽象类，就要实现抽象类中的抽象方法
class Rectangle extends Shape {
  // 实现getArea方法
  @override
  num getArea() {
    // TODO: implement getArea
    return (12 * 8) / 2;
  }

}