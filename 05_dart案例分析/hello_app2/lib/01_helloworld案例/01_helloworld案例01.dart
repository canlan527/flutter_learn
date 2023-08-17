import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('第一个Flutter程序')),
        body: const Center(
          child: Text(
            'Hello world',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ),
  )));
}


/**
 * Widget:
 * 有状态的Widget： StatefulWidget,在运行的过程中有一些状态（data）的改变
 * 无状态的Widget：StatelessWidget，内容是确定没有状态（data）的改变
 */

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}