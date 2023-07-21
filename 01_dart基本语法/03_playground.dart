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


  // 3. Booleans
  // var isBananaPeeled = false;

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

  
}
