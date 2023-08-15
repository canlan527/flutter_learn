// import 'dart:math' show Point; // 只显示Point方法
// import 'dart:math' hide Point; // 隐藏Point方法
import 'dart:math' as math;
import 'dart:io';
import 'dart:isolate';
import 'dart:async';

// Dart中默认情况下，一个dart文件就是一个库文件。
void main(List<String> args) {
  var point = math.Point(10, 30);
  print('${point.x}: ${point.y}');
}