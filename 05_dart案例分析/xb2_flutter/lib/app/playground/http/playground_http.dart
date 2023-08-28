import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PlaygroundHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ElevatedButton(onPressed: () {}, child: const Text('发送请求'))
        ],
      ),
    );
  }
}