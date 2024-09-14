import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String sakaEngland;
  final bool rectangaleShape;
  final bool avatarBorder;
  final double width;
  final double height;

  const Avatar({super.key,
    required this.sakaEngland,
    required this.rectangaleShape,
    this.avatarBorder = false,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: avatarBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : const Border(),
          ),
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              sakaEngland,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        rectangaleShape
            ? Positioned(
                //listen important
                bottom: 0, right: 1.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
