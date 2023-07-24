void main(List<String> args) {
  sayHello('coder');
  sayHello2('coder2', 18, 1.88);
  sayHello3('coder3', height: 1.88);
}

// 必选参数：必须传
void sayHello(String name) {}
// dart中没有函数的重载
// 可选参数：位置可选参数 - 命名可选参数
// 位置可选参数：[int age, double height]
void sayHello2(String name, [int age = 0, double height = 1.6]) {}

// 命令可选参数
void sayHello3(String name, {int age = 0, double height = 1.6}) {}
