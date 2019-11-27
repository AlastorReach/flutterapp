import 'package:flutter/material.dart';

class DrawerChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Container(
            child: FlutterLogo(),
          ),
        ),
        ListTile(
          title: Text(
            'Login',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16.0),
          ),
          onTap: () {
          },
        ),
      ],
    );
  }

}