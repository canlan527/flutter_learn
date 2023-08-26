class AppRouterConfiguration {
  final String pageName;

  AppRouterConfiguration.home(): pageName = '';
  AppRouterConfiguration.about(): pageName = 'About';

  bool get isHomePage => pageName == '';
  bool get isAboutPage => pageName == 'About';
}