import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/app/post/post.dart';

class PostIndexModel extends ChangeNotifier {
  // 定义 posts
  List<Post>? posts;
  final AppService appService;

  PostIndexModel({
    required this.appService,
    this.posts,
  });

  // 转换数据类型为Post
  List<Post> parsePosts (responseBody) {
    final List<Post> parsed = jsonDecode(responseBody)
    .map<Post>((item) => Post.fromJson(item))
    .toList();

    return parsed;
  }

  // 定义获取posts方法
  Future<List<Post>> getPosts() async {
    // 定义请求url
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    // 发送请求
    final response = await appService.apiHttpClient.get(uri);
    // 赋值
    final parsed = parsePosts(response.body);
    posts = parsed;
    // 通知监听 getPosts()
    notifyListeners();
    return parsed;
  }
}
