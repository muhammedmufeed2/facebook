import 'package:flutter/material.dart';

Widget headerButton1({
  required String buttonText,
  required IconData buttonIcon,
  required VoidCallback buttonAction,
  required Color color,
}) {
  return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: color),
      label: Text(
        buttonText,
      ));
}