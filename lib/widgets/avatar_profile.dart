import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({
    Key? key,
    required this.img,
    required this.level,
  }) : super(key: key);

  final String img;
  final int level;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CircularProfileAvatar(
          '',
          borderColor: const Color(0xff7163fe),
          borderWidth: 7,
          elevation: 5,
          radius: 40,
          imageFit: BoxFit.fitHeight,
          child: Image(
            image: AssetImage(img),
          ),
        ),
        CircularProfileAvatar(
          '',
          backgroundColor: const Color(0xff7163fe),
          radius: 15,
          // ignore: prefer_const_constructors
          child: Center(
              child: Text(
            level.toString(),
            style: const TextStyle(color: Colors.white),
          )),
        )
      ],
    );
  }
}
