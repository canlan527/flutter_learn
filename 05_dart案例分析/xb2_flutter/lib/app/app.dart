import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_page_aside.dart';
import 'package:xb2_flutter/app/components/app_page_bottom.dart';
import 'package:xb2_flutter/app/components/app_page_header.dart';
import 'package:xb2_flutter/app/components/app_page_main.dart';
import 'package:xb2_flutter/app/components/app_shared_button.dart';
import 'package:xb2_flutter/app/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          // backgroundColor: Colors.amber.shade600,
          appBar: showAppbar ? AppPageHeader() : null,
          body: AppPageMain(index: currentAppBottomNavigationBarItem),
          bottomNavigationBar: AppPageBottom(
            index: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
          ),
          floatingActionButton: AppSharedButton(),
          drawer: AppPageAside(),
        ),
      ),
    );
  }
}
