import 'package:flutter/material.dart' show ChangeNotifier, ThemeMode;

class MyProvider extends ChangeNotifier{
  String LanguageCode="en";
  ThemeMode modeApp=ThemeMode.light;

  changeTheme(ThemeMode mode) {
    modeApp=mode;
    notifyListeners();

  }

  void ChangeLanguage(String langCode){
    LanguageCode=langCode;
    notifyListeners();
  }

}