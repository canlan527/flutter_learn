import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';

class PostIndexModel extends ChangeNotifier {
  // 定义 posts
  dynamic posts;
  // PostIndexModel() {
  //   getPosts();
  // }
  // 定义获取posts方法
  getPosts() async {
    // 定义请求url
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    // 发送请求
    final response = await http.get(uri);
    // 赋值
    posts = response.body;
    // 通知监听 getPosts()
    notifyListeners();
  }
}
