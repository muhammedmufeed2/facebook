import 'package:facebook/photo/image.dart';
import 'package:facebook/section/headerButton.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/status_section.dart';
import 'package:facebook/section/story_section.dart';
import 'package:facebook/section_2/add_friend.dart';
import 'package:facebook/widgets/CircularButton.dart';
import 'package:facebook/widgets/headerbuttonTwo.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation:0,
          actions: [
            CircularButton(
                iconButton: Icons.search,
                buttonPress: () {
                  print("mufi double");
                }),
            CircularButton(
                iconButton: Icons.chat,
                buttonPress: () {
                  print("mufi hatrick");
                })
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Headerbutton(
              buttonOne: headerButton1(
                  buttonText: 'Live',
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.red),
              buttonTwo: headerButton1(
                  buttonText: "photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {},
                  color: Colors.green),
              buttonThree: headerButton1(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.purple),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            const Roomsection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            const StorySection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: palamar,
              postName: "palmer ",
              postTime: "5h",
              postImage: palamer1,
              postTitle: "happy journy in the home",
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "1k",
              shareCount: "1k",
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ), Postcard(
              avatar: foden,
              postName: "foden ",
              postTime: "1 day ago",
              postImage: foden2,
              postTitle: "",
              showBlueTick: true,
              likeCount: "15k",
              commentCount: "2k",
              shareCount: "3k",
            ), Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),const AddFriend(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            Postcard(
              avatar: saka,
              postName: "Saka ",
              postTime: "3 day ago",
              postImage: saka1,
              postTitle: sakaLife,
              showBlueTick: true,
              likeCount: "20k",
              commentCount: "5k",
              shareCount: "5k",
            ),
          ],
        ),
      ),
    );
  }
}
