import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text('Dark mode'),
              onChanged: (bool value) {
                settingsProvider.setThemeDataToDark(value);
              },
              value: Theme.of(context).brightness == Brightness.dark ? true : false,
            )
          ],
        ),
      ),
    ));
  }

}