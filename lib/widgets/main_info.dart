import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: size * 0.6,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 108, 100, 214),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 12, right: 8.0),
                          child: Icon(
                            Icons.center_focus_strong,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'IGN Info ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Gaming Reviews and News',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                              child: const Icon(
                            Icons.more_horiz_outlined,
                            color: Colors.white,
                            size: 40,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image(
                          image: const AssetImage('assets/celeste.jpg'),
                          height: size * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      height: 50,
                      color: const Color.fromARGB(117, 90, 78, 196),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'May 18th',
                                style: TextStyle(color: Color.fromARGB(181, 255, 255, 255), fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Look the new Expansion',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          const Icon(Icons.thumb_up_off_alt_rounded, color: Colors.white, size: 30)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
