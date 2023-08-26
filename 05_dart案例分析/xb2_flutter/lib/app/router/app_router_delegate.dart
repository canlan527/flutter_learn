import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/router/app_router_configuration.dart';

import '../components/app_home.dart';
import '../playground/routing/components/about.dart';

class AppRouterDelegate extends RouterDelegate<AppRouterConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final _navigatorKey;
  final AppModel appModal;
  // 构造函数，使用AppRouterDelegate的时候传递key值。
  AppRouterDelegate(this.appModal) : _navigatorKey = GlobalKey<NavigatorState>(){
    // 监听路由响应
    appModal.addListener(notifyListeners);
  }

  // 销毁监听
  @override
  void dispose() {
    super.dispose();
    appModal.removeListener(notifyListeners);
  }

  // 获取Navigator使用的key
  @override
  get navigatorKey => _navigatorKey;

  // 设置路由新地址
  @override
  Future<void> setNewRoutePath(configuration) async {
    print('设置路由新地址：${configuration.pageName}');
    if(configuration.isAboutPage) {
      appModal.setPageName('About');
    }
    if(configuration.isHomePage) {
      appModal.setPageName('');
    }
  }

  // 把路由配置转换成路由信息（restoreRouteInformation）
  @override
  get currentConfiguration {
    if(appModal.pageName == '') {
      return AppRouterConfiguration.home();
    }

    if(appModal.pageName == 'About') {
      return AppRouterConfiguration.about();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      pages: [
        MaterialPage(key: const ValueKey('AppHome'), child: AppHome()),
        if (appModal.pageName == 'About')
          MaterialPage(
            key: const ValueKey('About'),
            child: About(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        appModal.setPageName('');
        return true;
      },
    );
  }
}
