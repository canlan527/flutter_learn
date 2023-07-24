void main(List<String> args) {
  // 调用普通方法
  run(sayHello);
  // 调用匿名函数
  run(() {
    print('匿名函数被调用');
  });
  // 调用箭头函数，条件：箭头函数内函数体只能有一行
  run(() => print('箭头函数被调用'));

  // 有参数的函数
  run2((num1, num2) => num1 + num2);
  run3((num1, num2) => num1 + num2);

  // 带返回值的函数
  var res1 = calcFn2();
  print(res1(10, 50)); // 500
}

// 函数可以作为另一个函数的参数
void sayHello() {
  print('sayHello方法被调用');
}

void run(Function fn) {
  fn();
}

// 有参数的函数
void run2(int fn(int num1, int num2)) {
  print(fn(10, 20));
}

// 更易于阅读的写法，定义typedef
typedef calcFnType = int Function (int num1, int num2);

void run3(calcFnType calcFn) {
  print(calcFn(20, 40));
}

// 结合返回值
calcFnType calcFn2() {
  return (num1 ,num2) {
    return num1 * num2;
  };
}