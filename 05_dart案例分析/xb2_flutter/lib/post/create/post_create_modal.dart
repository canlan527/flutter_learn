import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';

class PostCreateModal extends ChangeNotifier {
  final AppService appService;

  PostCreateModal({
    required this.appService,
  });

  // 声明要创建post需要的变量
  String? title;
  String? content;
  bool loading = false;

  // 设置title
  setTitle(String? title) {
    title = title;
    notifyListeners();
  }
  // 设置content
  setContent(String? content) {
    content = content;
    notifyListeners();
  }
  // 设置loading
  setLoading(bool loading) {
    loading = loading;
    notifyListeners();
  }

  // 重置变量
  reset() {
    title = null;
    content = null;
  }

  // 创建post的请求方法,返回创建的post的id
  Future<int> createPost() async {
    // 定义请求的uri
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    // appservice发送请求
    final response = await appService.apiHttpClient.post(uri, body: {
      'title': title,
      'content': content,
    });
    // responseBody
    final responseBody = jsonDecode(response.body);

    // 处理响应
    if(response.statusCode == 201) {
      final postId = responseBody['insertId'];
      return postId;
    } else {
      throw HttpException(responseBody['message']);
    }
  }
}