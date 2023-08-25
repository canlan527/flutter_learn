import 'package:flutter/material.dart';

class UserCreate extends StatefulWidget {

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  String? name;
  String? password;

  // 给表单字段创建key，通过获取key可以获取表单内容，进行验证等功能
  final nameFieldKey = GlobalKey<FormFieldState>();
  final passwordFieldKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '注册用户',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 32,
          ),
        ),
        const SizedBox(height: 32,),
        TextFormField(
          key: nameFieldKey,
          decoration: const InputDecoration(
            labelText: '用户名',
          ),
          onChanged: (value) => name = value,
        ),
        const SizedBox(height: 32,),
         TextFormField(
          key: passwordFieldKey,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: '密码'
          ),
          onChanged: (value) => password = value,
        ),
        const SizedBox(height: 32,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            minimumSize: const Size(double.infinity, 60),
          ),
          // 通过key获取表单内容
          onPressed: () => print('用户名：${nameFieldKey.currentState!.value}, 密码：${passwordFieldKey.currentState!.value}'),
          // onPressed: () => print('用户名：$name, 密码：$password'),
          child: const Text('注册用户')
        )
      ],
    );
  }
}