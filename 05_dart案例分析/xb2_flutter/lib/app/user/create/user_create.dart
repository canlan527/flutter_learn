import 'package:flutter/material.dart';

class UserCreate extends StatelessWidget {
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            minimumSize: const Size(double.infinity, 60),
          ),
          onPressed: () => print('注册用户'),
          child: const Text('注册用户')
        )
      ],
    );
  }
}