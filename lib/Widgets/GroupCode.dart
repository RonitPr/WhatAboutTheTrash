import 'package:flutter/material.dart';

/// The container for code this specific group has.
/// Used to display to users in the group to share with ones who want to enter.
class GroupCode extends StatelessWidget {
  const GroupCode({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
      margin: EdgeInsetsDirectional.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 177, 177, 177),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(child: Text(code)),
    );
  }
}
