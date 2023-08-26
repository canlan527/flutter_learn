import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  String pageName = '';

  setPageName (value) {
    pageName = value;
    notifyListeners();
  }

}