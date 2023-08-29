import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/user/user.dart';

class PlaygroundHttp extends StatelessWidget {

  getUser() async {
    final uri = Uri.parse('https://nid-node.ninghao.co/users/116');
    final response = await http.get(uri);
    print('状态码${response.statusCode}');
    print('响应主体${response.body}');

    if(response.statusCode == 200) {
      final user = User.fromJson(response.body);
      print(user.id);
      print(user.name);
    }

  }

  createUser() async {
    final name = '灿烂';
    final password = '123456';
    // 准备要请求的地址
    final uri = Uri.parse('https://nid-node.ninghao.co/users');
    final response = await http.post(uri, body: {
      'name': name,
      'password': password,
    });

    print('状态码 ${response.statusCode}');
    print('响应主体 ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ElevatedButton(onPressed: getUser, child: const Text('发送请求')),
         ElevatedButton(onPressed: createUser, child: const Text('创建用户'))
        ],
      ),
    );
  }
}