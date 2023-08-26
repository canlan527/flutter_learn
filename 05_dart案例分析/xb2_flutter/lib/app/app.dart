import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthModel()),
        ChangeNotifierProvider(create: (context) => AppModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        initialRoute: '/', // 初始页面
        // 使用 Navigator 声明式接口 pages 配置路由
        home: Consumer<AppModel>(builder: (context, state, child) {
          return Navigator(
            pages: [
              MaterialPage(key: const ValueKey('AppHome'), child: AppHome()),
              if (state.pageName == 'About') 
                MaterialPage(
                  key: const ValueKey('About'),
                  child: About(),
                ),
              
            ],
            onPopPage: (route, result) {
              if(!route.didPop(result)) {
                return false;
              }
              state.setPageName('');
              return true;
            },
          );
        }),
      ),
    );
  }
}
