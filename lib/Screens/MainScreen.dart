import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';
import 'package:mehz/Widgets/GroupCode.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What About The Trash?'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settingsScreen');
            },
            icon: Icon(Icons.settings), // Settings button for user settings.
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GroupCode(code: "123456"),
              Container(
                // Space where the group member seens the data about the current week.
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 177, 177, 177),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              TextButton(
                style: getFlatButtonStyle(),
                onPressed: () {
                  Navigator.pushNamed(context, '/noGroupScreen');
                },
                child: Text('UPDATE'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 177, 177, 177),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              TextButton(
                style: getFlatButtonStyle(),
                onPressed: () {
                  Navigator.pushNamed(context, '/reportScreen');
                },
                child: Text('REPORT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
