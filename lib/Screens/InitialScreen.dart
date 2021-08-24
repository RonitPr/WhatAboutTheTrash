import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';
import 'package:mehz/Widgets/EnterGroupForm.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  Text getTitle() {
    return Text(
      "What\n \t\t\t\t\t\t\t\t\tAbout\n The\n \t\t\t\t\t\t\t\t\tTrash?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.grey[500],
                child: Center(child: getTitle()),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.grey[400],
                child: Column(
                  children: [
                    EnterGroupForm(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Create New Group"),
                        style: getFlatButtonStyle(
                          bgColor: Colors.grey,
                          textColor: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 60,
                          textSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
