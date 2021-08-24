import 'package:flutter/material.dart';

// Flat Buttons
ButtonStyle getFlatButtonStyle({
  Color bgColor: Colors.grey,
  Color textColor: Colors.black87,
  double width: 100,
  double height: 36,
  double hPadding: 5,
  double textSize: 20,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
}) {
  return TextButton.styleFrom(
      primary: textColor,
      backgroundColor: bgColor,
      minimumSize: Size(width, height),
      padding: EdgeInsets.symmetric(horizontal: hPadding),
      shape: shape,
      textStyle: TextStyle(fontSize: textSize));
}
