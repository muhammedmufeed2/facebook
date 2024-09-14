import 'package:facebook/photo/image.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Roomsection extends StatelessWidget {
  const Roomsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft, // Button left-align
      padding: const EdgeInsets.all(10), // Horizontal padding
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createdRoomButton(),
          Avatar(
            sakaEngland: saka,rectangaleShape: true,
          ),
          Avatar(sakaEngland: kovi,rectangaleShape: true,),
          Avatar(sakaEngland: foden,rectangaleShape: true,),
          Avatar(sakaEngland: palamar,rectangaleShape: true,),
          Avatar(sakaEngland: rash,rectangaleShape: true,),
          Avatar(sakaEngland: roni,rectangaleShape: true,),
          Avatar(sakaEngland: sterling,rectangaleShape: true,),
          Avatar(sakaEngland: bowen,rectangaleShape: true,),
        ],
      ),
    );
  }

  Widget createdRoomButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        child: OutlinedButton.icon(
          onPressed: () {},
          label: Text(
            "Create\nRoom",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: Colors.blue.shade300, width: 2), // Border color
          ),
        ),
      ),
    );
  }
}
