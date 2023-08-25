import 'package:flutter/material.dart';

import 'app_page_aside.dart';
import 'app_page_bottom.dart';
import 'app_page_header.dart';
import 'app_page_main.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // 底部导航栏Item
  int currentAppBottomNavigationBarItem = 0;
  //是否显示app菜单栏
  bool showAppbar = true;

  // 点按底部导航栏事件处理
  onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppbar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.amber.shade600,
        appBar: showAppbar ? AppPageHeader() : null,
        body: AppPageMain(index: currentAppBottomNavigationBarItem),
        bottomNavigationBar: AppPageBottom(
          index: currentAppBottomNavigationBarItem,
          onTap: onTapAppBottomNavigationBarItem,
        ),
        // floatingActionButton: AppSharedButton(),
        drawer: AppPageAside(),
      ),
    );
  }
}
