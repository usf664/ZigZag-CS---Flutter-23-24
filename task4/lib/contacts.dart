// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Stack myAvatar(int img, double avSize) {
  return Stack(
    children: [
      CircleAvatar(
        radius: avSize,
        backgroundImage: AssetImage('images/0$img.jpg'),
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

Column myAvatarColum(int img, double avSize, String name) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: myAvatar(img, avSize),
      ),
      Text(
        name,
        style: TextStyle(fontSize: 11),
      )
    ],
  );
}

SingleChildScrollView myRow() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        myAvatarColum(0, 35, "Wolyoung"),
        myAvatarColum(1, 35, "Arthur Leywin"),
        myAvatarColum(2, 35, "jin woo song"),
        myAvatarColum(3, 35, "Naruto"),
        myAvatarColum(4, 35, "Alice"),
        myAvatarColum(5, 35, "25th Bam"),
        myAvatarColum(6, 35, "joey Tribbiani"),
      ],
    ),
  );
}

Row myAvatarRow(int img, double avSize, String name, String seenTime) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: myAvatar(img, avSize),
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Text(
                "Pls, call me! it's an Important\nproblem",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
          Positioned(
              right: -80,
              top: 10,
              child: Text(
                seenTime,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
              ),),
          Positioned(
            right: 20,
            top: 10,
            child: CircleAvatar(
              radius: avSize / 6,
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      )
    ],
  );
}

ListTile myAvatarCard(int img, double avSize, String name, String seenTime) {
  return ListTile(
    leading: myAvatar(img, avSize),
    title: Text(
      name,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    ),
    subtitle: Text(
      "Pls, call me! it's an Important problem",
      style: TextStyle(
        fontSize: 11,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
        radius: avSize / 6,
        backgroundColor: Colors.blue,
      ),
      Text(
              seenTime,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
            )
  
      ],
    ),
    onTap: (){
      
    },
  );
}

SingleChildScrollView myColum() {
  return SingleChildScrollView(
    child: Column(
      children: [
        myAvatarCard(0, 35, "Wolyoung", "11:30 AM"),
        myAvatarCard(1, 35, "Arthur Leywin", "10:21 AM"),
        myAvatarCard(2, 35, "jin woo song", "10:02 AM"),
        myAvatarCard(3, 35, "Naruto", "9:40 AM"),
        myAvatarCard(4, 35, "Alice", "9:16 AM"),
        myAvatarCard(5, 35, "25th Bam", "8:33 AM"),
        myAvatarCard(6, 35, "joey Tribbiani", "8:10 AM"),
      ],
    ),
  );
}
