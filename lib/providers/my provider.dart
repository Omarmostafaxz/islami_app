import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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