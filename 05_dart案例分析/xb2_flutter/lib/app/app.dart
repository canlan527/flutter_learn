import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/app/playground/layout/playground_layout.dart';
import 'package:xb2_flutter/app/playground/routing/components/about.dart';
import 'package:xb2_flutter/app/post/show/post_show.dart';
import 'package:xb2_flutter/app/theme/app_theme.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthModel(),// 给子部件提供AuthLogin数据
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        initialRoute: '/', // 初始页面
        // routes: { // 路由表里放置路由页面
        //   '/':(context) => AppHome(),
        //   '/about':(context) => About(),
        //   '/p_layout':(context) => PlaygroundLayout(),
        // },
        // 使用onGenerateRoute生层路由表，并且路由传参
        onGenerateRoute: (settings) {
          if(settings.name == '/') {
            return MaterialPageRoute(builder: (context) => AppHome());
          }
          if(settings.name == '/about') {
            return MaterialPageRoute(builder: (context) => About());
          }
          if(settings.name == '/p_layout') {
            return MaterialPageRoute(builder: (context) => PlaygroundLayout());
          }
    
          final uri = Uri.parse(settings.name ?? '');
    
          // posts/:id
          if(uri.pathSegments.length == 2 && uri.pathSegments.first == 'posts') {
            final postId = uri.pathSegments[1];
            return MaterialPageRoute(builder: (context) => PostShow(postId));
          }
        },
    
      ),
    );
  }
}
