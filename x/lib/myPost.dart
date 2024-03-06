import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String postAvatar;
  final String postWriter;
  final String postUser;
  final String postContant;
  final String postImage;
  final List<int> reach;
  const MyPost( 
      {super.key,
      required this.postAvatar,
      required this.postWriter,
      required this.postUser,
      required this.postContant,
      required this.postImage,
      required this.reach});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("images/$postAvatar"),
        ),
        Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  postWriter,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(postUser)
              ],
            ),
            Container(
              height: 250,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image(
                image: AssetImage("images/$postImage"),
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(Icons.chat_bubble_outline_outlined),
                Text(reach.elementAt(0).toString())
              ],
            )
          ],
        )
      ],
    );
  }
}
