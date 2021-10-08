import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';
import 'package:mehz/services/SheredPref.dart';

final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

class NoGroupScreen extends StatefulWidget {
  const NoGroupScreen({Key? key}) : super(key: key);

  @override
  _NoGroupScreenState createState() => _NoGroupScreenState();
}

class _NoGroupScreenState extends State<NoGroupScreen> {
  static final _formKey = GlobalKey<FormState>();
  final nickController = TextEditingController();
  final gcodeController = TextEditingController();
  final gpassController = TextEditingController();

  @override
  void dispose() {
    nickController.dispose();
    gcodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[500],
              child: Image.asset('lib/Assets/suaknife.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      controller: nickController,
                      maxLength: 10,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: 'Your Nickname',
                        errorStyle: TextStyle(fontSize: 15),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Forgot your nickname!';
                        }
                        if (!validCharacters.hasMatch(value)) {
                          return 'Use only letters and numbers!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: gcodeController,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: 'Existing Group Code',
                        errorStyle: TextStyle(fontSize: 15),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Forgot the code!';
                        }
                        if (!validCharacters.hasMatch(value)) {
                          return 'That can\'t be right!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: gpassController,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: 'Group pass code',
                        errorStyle: TextStyle(fontSize: 15),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Forgot group passcode!';
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Enter the group with this nickname. TODO
                              SharedPref().saveGroupAndNickname(
                                  gcodeController.text,
                                  "123456",
                                  nickController.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        "Entering group... ${nickController.text} ${gcodeController.text}")),
                              );
                            }
                          },
                          child: Text("Enter"),
                          style: getFlatButtonStyle(
                            bgColor: Colors.grey,
                            textColor: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 60,
                            textSize: 30,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/createGroupScreen');
                          },
                          child: Text("New Group"),
                          style: getFlatButtonStyle(
                            bgColor: Colors.grey,
                            textColor: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 60,
                            textSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
