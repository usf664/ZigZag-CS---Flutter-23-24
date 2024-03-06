import 'package:flutter/material.dart';

class Chatts extends StatelessWidget {
  final String name;
  final String imgAvatarName;
  final String lastMassege = "Pls, call me! it's an important problem";
  final String lastSeen;

  const Chatts({super.key, required this.name, required this.imgAvatarName, required this.lastSeen});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Stack myAvatar( double avSize ) {
  return Stack(
    children: [
      CircleAvatar(
        radius: avSize,
        backgroundImage: AssetImage('images/0$imgAvatarName'),
      ),
      Positioned(
        right: avSize / 10,
        bottom: avSize / 10,
        child: CircleAvatar(
          radius: avSize / 6,
          backgroundColor: Colors.green,
        ),
      ),
    ],
  );
}


Column myAvatarColum( double avSize) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: myAvatar( avSize),
      ),
      Text(
        name,
        style: const TextStyle(fontSize: 11),
      )
    ],
  );
}
}