import 'package:flutter/material.dart';

class UserCreate extends StatefulWidget {

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  String? name;
  String? password;

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
        TextField(
          decoration: InputDecoration(
            labelText: '用户名',
          ),
          onChanged: (value) => name = value,
        ),
        const SizedBox(height: 32,),
         TextField(
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
          onPressed: () => print('用户名：$name, 密码：$password'),
          child: const Text('注册用户')
        )
      ],
    );
  }
}