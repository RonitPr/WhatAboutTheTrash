import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';

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
            onPressed: () {},
            icon: Icon(Icons.settings), // Settings button for user settings.
          ),
        ],
      ),
      body: Center(
        child: Container(
          //The group's code
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: EdgeInsetsDirectional.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 177, 177, 177),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(child: Text("<Group code>")),
              ),
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
