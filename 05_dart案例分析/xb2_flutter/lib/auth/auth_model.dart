import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';
import 'package:xb2_flutter/auth/auth.dart';

// 定义状态类,继承ChangeNotifier，就可以订阅当前类的状态变化
class AuthModel extends ChangeNotifier{
  String userId = '';
  String name = '';
  String token = '';

  bool get isLogined => token.isNotEmpty;

  Future<Auth> login(LoginData data) async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/login');
    final response = await http.post(uri, body: data.toJson());
    final responseBody = jsonDecode(response.body);

    if(response.statusCode == 200) {
      final auth = Auth.fromJson(responseBody);

      userId = auth.id.toString();
      name = auth.name;
      token = auth.token;
      notifyListeners();
      return auth;
    } else {
      throw HttpException(responseBody['message'] ?? '网络请求出了一点问题');
    }
  }

  logout() {
    userId = '';
    name = '';
    token = '';
    notifyListeners();
  }
}