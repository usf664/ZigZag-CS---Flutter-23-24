// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 25, 20, 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //open profile users page
                  },
                  icon: Icon(Icons.supervised_user_circle_outlined),
                ),
                GestureDetector(
                  onTap: () {
                    //open profile page
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/profilePhoto.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                //open profile page
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock, size: 17),
                        Text(
                          "Yousef Zakaria ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ],
                    ),
                    Text('@YousefZ687506'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //open profile followers page
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 15, right: 10),
                child: Row(
                  children: [
                    Text(
                      "0 Followers   73 Following",
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Divider(thickness: .25),
            ),
            myDrawerList(
                "Profile", Icons.person_outline_rounded, 21, FontWeight.w600),
            myDrawerList("Premium", Icons.workspace_premium_outlined, 21,
                FontWeight.w600),
            myDrawerList("Bookmarks", Icons.bookmark_outline_outlined, 21,
                FontWeight.w600),
            myDrawerList("Lists", Icons.featured_play_list_outlined, 21,
                FontWeight.w600),
            myDrawerList("طلبات المتابعة", Icons.person_add_alt_1_outlined, 21,
                FontWeight.w600),
            myDrawerList(
                "تحقيق الدخل", Icons.local_atm_outlined, 21, FontWeight.w600),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: .25),
            ),
            myDrawerList("Settings & Privacy", Icons.settings_outlined, 16,
                FontWeight.w500),
          ],
        ),
      ),
    );
  }

  Row myDrawerList(
      String name, IconData ico, double fSize, FontWeight fWeight) {
    return Row(
      children: [
        Icon(ico),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 25, 12),
          child: Text(
            name,
            style: TextStyle(
              fontSize: fSize,
              fontWeight: fWeight,
            ),
          ),
        ),
      ],
    );
  }
}
