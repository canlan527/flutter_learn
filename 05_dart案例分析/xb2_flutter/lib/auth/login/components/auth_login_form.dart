import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class AuthLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用Provider.of来拿取数据, 指定要访问的模型类型AuthModel
    final authModel = Provider.of<AuthModel>(context);

    final loginButton = ElevatedButton(
        onPressed: () {
          print('未登录：${authModel.isLogined}');
          authModel.login();
          print('已登录：${authModel.isLogined}');
        },
        child: Text('登录'));

    final logoutButton = ElevatedButton(
        onPressed: () {
          print('已登录：${authModel.isLogined}');
          authModel.logout();
          print('未登录：${authModel.isLogined}');
        },
        child: Text('退出登录'));

    return Container(
      child: authModel.isLogined ? logoutButton : loginButton,
    );
  }
}
