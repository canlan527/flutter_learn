void main(List<String> args) {
  final color = Colors.red;

  switch(color) {
    case Colors.red:
      print('红色');
      break;
    case Colors.yellow:
      print('黄色');
      break;
    case Colors.green:
      print('绿色');
      break;
    case Colors.orange:
      print('橙色');
      break;
    default:
      print('黑色');
      break;
  }

  print(color);
  // index 获取枚举类型的索引值
  print(Colors.red.index); // 0
}

enum Colors {
  red,
  yellow,
  green,
  orange
}