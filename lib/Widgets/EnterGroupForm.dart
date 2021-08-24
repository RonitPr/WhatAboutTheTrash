import 'package:flutter/material.dart';

final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

class EnterGroupForm extends StatefulWidget {
  const EnterGroupForm({Key? key}) : super(key: key);

  @override
  _EnterGroupFormState createState() => _EnterGroupFormState();
}

class _EnterGroupFormState extends State<EnterGroupForm> {
  final _formKey = GlobalKey<FormState>();
  final nickController = TextEditingController();
  final gcodeController = TextEditingController();

  @override
  void dispose() {
    nickController.dispose();
    gcodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
            child: TextFormField(
              controller: nickController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Forgot your nickname!';
                }
                if (!validCharacters.hasMatch(value)) {
                  return 'Use only letters and numbers!';
                }
                return null;
              },
              maxLength: 10,
              maxLines: 1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white70,
                filled: true,
                hintText: 'Your Nickname',
                errorStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10, left: 20),
            child: Text(
              "Enter existing group code:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    controller: gcodeController,
                    autofocus: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Forgot the code!';
                      }
                      if (!validCharacters.hasMatch(value)) {
                        return 'That can\'t be right!';
                      }
                      return null;
                    },
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white70,
                      filled: true,
                      errorStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.only(top: 10),
                  icon: Icon(
                    Icons.send,
                    size: 30,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // String nickName = nickController.text;
                      // String gcode = gcodeController.text;
                      // Enter the group with this nickname.
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Entering group...")),
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
