import 'package:facebook/photo/image.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading:Avatar(sakaEngland: saka,rectangaleShape: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What 's on your mind",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
