import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Category(
            text: 'All Topics',
            border: Color.fromARGB(255, 108, 100, 214),
            color: Color(0xff36355f),
          ),
          Category(
            text: 'eSports',
            color: Color.fromARGB(255, 108, 100, 214),
            border: Color.fromARGB(255, 108, 100, 214),
          ),
          Category(
            text: 'Tournament',
            color: Color(0xff36355f),
            border: Color.fromARGB(255, 108, 100, 214),
          ),
          Category(
            text: 'Free Games',
            color: Color(0xff36355f),
            border: Color.fromARGB(255, 108, 100, 214),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final Color border;
  const Category({
    Key? key,
    required this.text,
    required this.color,
    required this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          primary: Colors.white,
          backgroundColor: color,
          elevation: 1,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          side: BorderSide(color: border),
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
        ),
      ),
    );
  }
}
