import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/router/app_router_configuration.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRouterConfiguration> {
  // 解析路由信息
  @override
  Future<AppRouterConfiguration> parseRouteInformation(RouteInformation routeInformation) async {
    print('解析路由信息：${routeInformation.location}');
    if(routeInformation.location == '/about') {
      return AppRouterConfiguration.about();
    }
    return AppRouterConfiguration.home();
  }

  // 恢复路由信息
  @override
  RouteInformation? restoreRouteInformation(AppRouterConfiguration configuration) {
    super.restoreRouteInformation(configuration);
    if(configuration.isHomePage) {
      return RouteInformation(location: '/');
    }
    if(configuration.isAboutPage) {
      return RouteInformation(location: '/about');
    }
  }
}