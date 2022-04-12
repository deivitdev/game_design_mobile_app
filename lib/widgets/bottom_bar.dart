import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: 50,
        color: Color.fromARGB(255, 108, 100, 214),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconBar(icon: Icons.home),
            IconBar(icon: Icons.store),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: Color.fromARGB(255, 60, 54, 151),
                width: 100,
                child: IconBar(icon: Icons.add),
              ),
            ),
            IconBar(icon: Icons.person),
            IconBar(icon: Icons.discord_outlined),
          ],
        ),
      ),
    );
  }
}

class IconBar extends StatelessWidget {
  final IconData icon;
  const IconBar({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 40,
      color: Colors.white,
    );
  }
}
