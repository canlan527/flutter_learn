import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Consumer 获取数据
    return Consumer<AuthModel>(
      builder: (context, state, child) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle_outlined,
                size: 128,
                color: Colors.black12,
              ),
              state.isLogined ? Text(state.name) : const Text('未登录'),
            ],
          ),
        );
      }
    );
  }
}