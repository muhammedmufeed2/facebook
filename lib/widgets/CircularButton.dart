

import 'package:flutter/material.dart';
class CircularButton extends StatelessWidget {
final IconData iconButton;
final VoidCallback buttonPress;
final Color buttonColor;

CircularButton({
  required this.iconButton,
  required this.buttonPress,
  this.buttonColor=Colors.black,
});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonPress,
        icon: Icon(
        iconButton,
          color: buttonColor,
          size: 20,
        ),
      ),
    );
  }
}
