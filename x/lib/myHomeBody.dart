// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:x/myPost.dart';


class MyHomeBody extends StatelessWidget {
  const MyHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: const [
          MyPost( postAvatar: "00.jpg", postWriter:  "فضفضة دينية", postUser: "10h . @artt_28", postContant: "يالله", postImage: "10.jpg", reach: [8, 132, 726, 25])
          
        ],
      ),
    );
  }
}


