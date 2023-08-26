import 'package:flutter/material.dart';

// 定义状态类,继承ChangeNotifier，就可以订阅当前类的状态变化
class AuthModel extends ChangeNotifier{
  bool isLogined = false;
  String name = '';

  login() {
    isLogined = true;
    name = 'canlan';
    print('请求登录');
    notifyListeners();
  }

  logout() {
    isLogined = false;
    name = '';
    print('退出登录');
    notifyListeners();
  }
}