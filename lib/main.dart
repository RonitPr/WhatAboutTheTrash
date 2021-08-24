import 'package:flutter/material.dart';
import 'package:mehz/Screens/InitialScreen.dart';
import 'package:mehz/Screens/MainScreen.dart';
import 'package:mehz/Screens/ReportScreen.dart';

main() {
  runApp(MehzApp());
}

class MehzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/noGroupScreen': (context) => const InitialScreen(),
        // '/settingsScreen': (context) => const SettingsScreen(),
        '/reportScreen': (context) => const ReportScreen(),
        // '/createGroupScreen' : (context) => const CreateGroupScreen(),
      },
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 177, 177, 177),
          canvasColor: Color.fromARGB(255, 205, 205, 205)),
    );
  }
}
