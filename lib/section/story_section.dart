import 'package:facebook/photo/image.dart';
import 'package:facebook/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyText: 'Add to Story',
            avatarPhoto: saka,
            avatarCircle: saka,
            createStoryStatus: true,



          ), StoryCard(
            storyText: 'palamer striker',
            avatarPhoto: palamer1,
            avatarCircle: palamar,
            createStoryStatus: false,
            avatarBorder: true,


          ), StoryCard(
            storyText: 'foden striker',
            avatarPhoto: foden2,
            avatarCircle: foden,
            createStoryStatus: false,
            avatarBorder: true,

          ), StoryCard(
            storyText: 'guhi defender',
            avatarPhoto: guhi,
            avatarCircle: kovi,
            createStoryStatus: false,
            avatarBorder: true,


          ), StoryCard(
            storyText: 'Strling goal',
            avatarPhoto: foden2,
            avatarCircle: sterling,
            createStoryStatus: false,
            avatarBorder: true,

          ),
        ],
      ),
    );
  }
}
