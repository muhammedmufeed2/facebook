import 'package:flutter/material.dart';

class Suggestioncard extends StatelessWidget {
  final String avatar;
  final String addFriendName;
  final String mutalFriends;
  final VoidCallback addButton;

  Suggestioncard({
    required this.avatar,
    required this.addButton,
    required this.mutalFriends,
    required this.addFriendName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
           height: 140,
          child: Column(
            children: [
              ListTile(
                title: Text(addFriendName),
                subtitle: Text(mutalFriends),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    addButtonFacebook(
                        buttonAction: addButton,
                        buttonIcon: Icons.account_box,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: "Add Friend",
                        buttonBackgroundColor: Colors.blue.shade700),
                    blankButton(
                        buttonAction: () {},
                        buttonTextColor: Colors.black,
                        buttonText: "Remove",
                        buttonColor: Colors.grey.shade500)
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget blankButton({
    required VoidCallback buttonAction,
    required Color buttonTextColor,
    required String buttonText,
    required Color buttonColor,
  }) {
    return ElevatedButton(
      onPressed: buttonAction,
      style: ButtonStyle(
          shape: WidgetStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))))),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    );
  }

  Widget addButtonFacebook({
    required VoidCallback buttonAction,
    required IconData buttonIcon,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
    required Color buttonBackgroundColor,
  }) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(buttonBackgroundColor),
          shape: WidgetStateProperty.all<OutlinedBorder>(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))))),
      onPressed: buttonAction,
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        child: Image.asset(
          avatar,
          fit: BoxFit.cover,
          height: 250,
        ),
      ),
    );
  }
}
