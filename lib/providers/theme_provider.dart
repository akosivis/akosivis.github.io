import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _isLightTheme = true;

  bool get isLightTheme => _isLightTheme;

  void toggleTheme() {
    if (_isLightTheme) {
      _isLightTheme = false;
    } else {
      _isLightTheme = true;
    }
    notifyListeners();
  }
}