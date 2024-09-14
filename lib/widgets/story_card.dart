import 'package:facebook/widgets/CircularButton.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String storyText;
  final String avatarPhoto;
  final String avatarCircle;
  final bool createStoryStatus;
  final bool avatarBorder;

  StoryCard({
    required this.storyText,
    required this.avatarPhoto,
    required this.avatarCircle,
    this.createStoryStatus = false,
    this.avatarBorder=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(avatarPhoto),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            15,
          )),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 1,
              child: createStoryStatus
                  ? CircularButton(
                      iconButton: Icons.add,
                      buttonColor: Colors.blue,
                      buttonPress: () {
                        print("Create new story");
                      },
                    )
                  : Avatar(
                      sakaEngland: avatarCircle,
                      rectangaleShape: false,
                avatarBorder:avatarBorder ,width:35 ,height: 35,

                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              storyText,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
