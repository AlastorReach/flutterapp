import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utils/themes.dart';

class SettingsProvider with ChangeNotifier {
  ThemeData _themeData = flutterAppLighTheme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }

  setThemeDataToDark(bool value){
    if(value){
      themeData = flutterAppDarkTheme;
    }
    else{
      themeData = flutterAppLighTheme;
    }
  }
}