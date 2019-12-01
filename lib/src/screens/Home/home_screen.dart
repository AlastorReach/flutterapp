import 'package:flutter/material.dart';
import 'package:flutterapp/src/screens/Logins/logins_screen.dart';
import '../Settings/settings_screen.dart';
import '../Login/login_screen.dart';
import '../../common/widgets/drawer_child.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerChild(),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Settings Screen'),
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (BuildContext context, _, __) =>
                          SettingsScreen()));
                },
              ),
              RaisedButton(
                child: Text('Logins Screens'),
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (BuildContext context, _, __) =>
                          LoginsScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
