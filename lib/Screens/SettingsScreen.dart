import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';
import 'package:mehz/services/SheredPref.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: TextButton(
          style: getFlatButtonStyle(),
          onPressed: () {
            SharedPref().clearMehzPref();
            Navigator.of(context).pop();
          },
          child: Text('Exit Group'),
        ),
      ),
    );
  }
}
