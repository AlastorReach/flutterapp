import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './src/providers/settings_provider.dart';
import './src/screens/Home/home_screen.dart'; 

void main() => runApp(
  MultiProvider(
    providers: [
            ChangeNotifierProvider<SettingsProvider>(
              builder: (BuildContext context) => SettingsProvider(),
            )
          ],
    child:FlutterApp()));

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return MaterialApp(
        home: HomeScreen(),
        theme: Provider.of<SettingsProvider>(context).themeData,
      );
    });
  }
}
