import 'package:flutter/material.dart';
import 'package:flutterapp/src/screens/Login/login_screen.dart';
import 'package:flutterapp/src/screens/Login/login_screen2.dart';
import 'package:flutterapp/src/screens/Logins/widgets/grid_item.dart';

class LoginsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          GridItem(
            screen: LoginScreen(),
            title: 'Login 1',
          ),
          GridItem(
            screen: LoginScreen2(),
            title: 'Login 2',
          ),
        ],
      ),
    );
  }

}