import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REPORT'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("NOT FULL"),
              style: getFlatButtonStyle(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                textSize: 40,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("I CAN'T"),
              style: getFlatButtonStyle(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                textSize: 40,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("I GOT IT"),
              style: getFlatButtonStyle(
                height: 160,
                width: MediaQuery.of(context).size.width * 0.9,
                textSize: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
