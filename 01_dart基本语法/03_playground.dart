void main(List<String> args) {
  // 类型
  // Numbers (num, int, double)
  // Strings (String)
  // Booleans (bool)
  // Lists (List, also known as arrays)
  // Sets (Set)
  // Maps (Map)
  // Symbols (Symbol)
  // The value null (Null)

  // 原始值类型
  // 1. Numbers
  // 1.1 num 数字类型
  // 1.2 int 整型
  // 1.3 double 双精度小数

  // var rounded = 2.5.round();
  // print(rounded); // 3

  // 2. Strings
  // var a = 'This is a string.';

  // 字符串串联和多行声明
  // final s1 = 'String '
  //   'concatenation'
  //   " even works over line breaks.";

  // print(s1);

  // final s2 = '''
  // You can create
  // multiline strings like this one.
  // ''';

  // final s3 = """
  // 君不见黄河之水天上来，
  // 奔流倒海不复回
  // """;

  // print(s2);
  // print(s3);
  // final s1 = 'String '
  //     'concatenation'
  //     " works even over line breaks.";
  // print(s1 ==
  //     'String concatenation works even over '
  //         'line breaks.');

  // 字符串的变量
  // var fruit = 'watermelon';
  // var str = 'I like eat $fruit';
  // print(str); // I eat apple
  // var name = 'why';
  // var age = 20;
  // var height = 1.88;

  // var message1 = 'my name is ${name}, my age is ${age}, my height is ${height}';
  // var message2 = 'my name is ${name}, type is ${name.runtimeType}';

  // print(message1);
  // print(message2);

  // var message3 = 'my name is $name, type is $name.runtimeType'// 不识别$name.runtimeType
  // 所以调用表达式的时候还是需要包裹花括号，显示变量可以不需要花括号

  // 3. Booleans
  // var isBananaPeeled = false;

  // flutter里，没有非空即真，也没有非零即真
  // if (true) {
  //   print('只能判断静态的布尔类型');
  // }

  // 下面是错误的演示
  // var flag = '123';
  // if(flag) { // 不能识别123是true
  //   print('1231231');
  // }

  // 变量
  // var useNickname = true;
  // final String name;
  // Cannot read name here, not initialized.
  // if (useNickname) {
  //   name = "Bob";
  // } else {
  //   name = "Robert";
  // }
  // print(name); // Properly initialized here.

  // var foo = const [];
  // print(foo); // []
  // // 等同于
  // var bar = [];
  // print(bar); // []

  // print(identical(foo, bar)); // false

  // 空类型和非空类型
  // 安全的空类型
  // 为了明确表示一个变量可能是空类型，声明的时候加?问号来表示

  // int? aNullableInt = null;
  // aNullableInt = 0;
  // aNullableInt = null;

  // String? returnNullable() {
  //   return random.nextDouble() < 0.5 ? 'sometimes null' : null;
  // }

  // String returnNonNullable() {
  //   return '永远不返回空类型';
  // }

  // printIntger()
  // var number = 2023;
  // printIntger(number); // Hello world,this is 2023

  // 集合类型
  // var arr1 = <String>['coder1', 'coder2', 'coder3'];
  // var arr2 = new List.of([1, 2, 3]);

  // arr2.add(1000);
  // arr2.forEach((v) => print('$v'));
  // arr1.forEach((e) => print(e));
  // print(arr2 is List); // true

  // var map1 = <String, String>{'name': 'coderwhy', 'gender': 'male'};
  // var map2 = new Map <String, String>();
  // map2['hobby'] = 'study';
  // map2['play'] = 'basketball';
  // map2.forEach((key, value) => print(key + ": " + value));
  // print(map2 is Map<String, String>); // true

  // 函数 Function
  // eg:判断整数是否为 0
  // bool isZero(int number) {
  //   return number == 0;
  // }

  // void printInfo(int number, Function check) {
  //   print('$number is Zero: ${check(number)}');
  // }

  // 函数的缩写：
  // bool isZero(int number) => number == 0;

  // void printInfo(int number, Function check) => print('$number is Zero: ${check(number)}');

  // Function f = isZero;
  // int x = 10;
  // int y = 0;

  // printInfo(x, isZero);
  // printInfo(y, isZero);

  // 函数参数
  // 可选参数
  // 位置可选参数 {}
  // void demo({bool isbold = false, bool ishidden = false}) => print('$isbold, $ishidden');

  // demo(isbold:true, ishidden: true);
  // demo(isbold: true);
  // demo();

  // 命名可选参数
  // void demo(bool isbold, [bool ishappy = false]) => print('$isbold, $ishappy');

  // demo(true, true);
  // demo(true);

  // var p = Point(10, 20);
  // p.printCor();
  // Point.factory = 1000;
  // p.printFactory();
}

// printIntger(int a) {
//   print('Hello world,this is $a');
// }

// 类
// class Point {
//   // 定义变量
//   double x = 0.0;
//   double y = 0.0;
//   // 定义类静态变量
//   static int factory = 0;

//   // 构造函数
//   Point(this.x, this.y);

//   printCor() => print('$x, $y');
//   printFactory() => print(factory);

// }
