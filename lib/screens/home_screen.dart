import 'package:flutter/material.dart';
import 'package:game_design_mobile_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: const Color(0xff36355f),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.1, 0.9),
            colors: <Color>[
              Color.fromARGB(255, 54, 53, 95),
              Color.fromARGB(255, 71, 63, 177),
              Color.fromARGB(255, 54, 53, 95),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopBar(),
              Expanded(child: Container()),
              const Categories(),
              Expanded(child: Container()),
              const MainInfo(),
              Expanded(child: Container()),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('Discord Blog', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              AvatarProfile(level: 17, img: 'assets/avatar.png')
            ],
          ),
          const Text(
            'All the updates on our discord blog',
            style: TextStyle(color: Colors.white38, fontSize: 15),
          )
        ],
      ),
    );
  }
}
