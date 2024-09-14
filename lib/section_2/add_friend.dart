import 'package:facebook/photo/image.dart';
import 'package:facebook/widget2/suggestioncard.dart';
import 'package:flutter/material.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: const EdgeInsets.only(left: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("People you may know"),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Suggestioncard(
                  avatar: foden,
                  addButton: () {
                    print("foden kick");
                  },
                  mutalFriends: '10 mutual  friends',
                  addFriendName: 'phil foden',
                ),
                Suggestioncard(
                  avatar: bowen,
                  addButton: () {
                    print("");
                  },
                  mutalFriends: '15 mutual friends',
                  addFriendName: 'jerad bowen',
                ),
                Suggestioncard(
                  avatar: roni,
                  addButton: () {
                    print("");
                  },
                  mutalFriends: '25 mutual friends',
                  addFriendName: 'wayne rooni',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
