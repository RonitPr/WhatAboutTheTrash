import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';
import 'package:table_calendar/table_calendar.dart';

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
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            TextButton(
              style: getFlatButtonStyle(),
              onPressed: () {
                Navigator.pushNamed(context, '/noGroupScreen');
              },
              child: Text('UPDATE'),
            ),
            Container(
              width: 300,
              height: 150,
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
    );
  }
}
