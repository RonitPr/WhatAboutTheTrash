import 'package:flutter/material.dart';
import 'package:mehz/Styles/styles.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  @override
  _CreateGroupScreenState createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  static final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passcodeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passcodeController.dispose();
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
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[500],
                child: Image.asset('lib/Assets/suaknife.png'),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: nameController,
                        maxLength: 20,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white70,
                          filled: true,
                          hintText: 'Group Name',
                          errorStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextFormField(
                        controller: passcodeController,
                        maxLength: 20,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white70,
                          filled: true,
                          hintText: 'Group Passcode',
                          errorStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Create"),
                            style: getFlatButtonStyle(
                              bgColor: Colors.grey,
                              textColor: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 60,
                              textSize: 30,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Go Back"),
                            style: getFlatButtonStyle(
                              bgColor: Colors.grey,
                              textColor: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 45,
                              textSize: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
