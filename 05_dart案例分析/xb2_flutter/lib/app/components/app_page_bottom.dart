import 'package:flutter/material.dart';

class AppPageBottom extends StatelessWidget {
  final int index;
  final ValueChanged<int>? onTap;

  AppPageBottom({this.onTap, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: '发现',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo_outlined),
          label: '添加',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: '我的',
        ),
      ],
    );
  }
}
