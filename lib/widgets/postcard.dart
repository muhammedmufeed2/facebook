import 'package:facebook/section/headerButton.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blue_tick.dart';
import 'package:facebook/widgets/headerbuttonTwo.dart';

import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String postName;
  final String postTime;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  const Postcard({
    super.key,
    required this.avatar,
    required this.postName,
    required this.postTime,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titileHeading(),
          postingImage(),
          likeAndCommentSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          Headerbutton(
            buttonOne: headerButton1(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up,
                buttonAction: () {},
                color: Colors.grey.shade700),
            buttonTwo: headerButton1(
                buttonText: "Comments",
                buttonIcon: Icons.message_outlined,
                buttonAction: () {},
                color: Colors.grey.shade700),
            buttonThree: headerButton1(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonAction: () {},
                color: Colors.grey.shade700),
          )
        ],
      ),
    );
  }

  Widget likeAndCommentSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                likeshareSecond(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                likeshareSecond(label: commentCount),
                const SizedBox(
                  width: 5,
                ),
                likeshareSecond(label: "Comments"),
                const SizedBox(
                  width: 10,
                ),
                likeshareSecond(label: shareCount),
                const SizedBox(
                  width: 5,
                ),
                likeshareSecond(label: "Shares"),
                Avatar(
                  sakaEngland: avatar,
                  rectangaleShape: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {
                      print("drop");
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget likeshareSecond({required String label}) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget postingImage() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titileHeading() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5,left: 10,right: 10),
            child: Text(
              postTitle,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          )
        : const SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(sakaEngland: avatar, rectangaleShape: false),
      title: Row(
        children: [
          Text(
            postName,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : const SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(postTime),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {

        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
