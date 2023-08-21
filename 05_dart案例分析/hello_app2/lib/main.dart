import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('加减counter'),
        ),
        body:const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Count();
  }
}
// Widget，我们要暴露给别人使用，所以命名不需要加下划线_
class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}
/// 为什么Flutter在设计的时候 statefulWidget的build方法放在State中？
/// 1. build出来的Widget是需要依赖State中的变量的
/// 2. 在Flutter 运行的过程中：
///    Widget是不断的销毁和创建的
///    当我们自己的状态发生改变时，并不希望重新创建一个新的State;仅仅改变变动的Widget。
///    所以单独需要State类，让build的东西依赖类里的变量即可，并不需要重新创建State

// 属于上方Widget的state是不希望别人访问到的，命名使用下划线开头即可。
class _CountState extends State<Count> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('当前计数：$count'),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(onPressed: () {
            setState(() {
              count--;
            });
          }, child: const Text('-')),
          const SizedBox(width: 8),
          Text(count.toString()),
          const SizedBox(width: 8),
           ElevatedButton(onPressed: () {
            setState(() {
              count++;
            });
          }, child: const Text('+')),
        ],
      ),
        ],
      )
    );
  }
}
