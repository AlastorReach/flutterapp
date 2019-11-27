import 'package:flutter/material.dart';

final ThemeData flutterAppLighTheme = _buildLightTheme();
final ThemeData flutterAppDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base;
}

ThemeData _buildDarkTheme(){
  final ThemeData base = ThemeData.dark();
  return base;
}