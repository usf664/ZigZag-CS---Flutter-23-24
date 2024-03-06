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
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment :CrossAxisAlignment.start,

        children: [
        
        GestureDetector(
          onTap: () {
            //open profile page
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("images/profilePhoto.jpg"),
              ),
              title: Text("Yousef Zakaria", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
              subtitle: Text("@USF664", style: TextStyle(fontSize: 11),),
            ),
          ),
        ),
      
      SizedBox(
        height: 50,
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Home", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Messeges", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Profile", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,010),
        child: Text("Notifications", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("My wellats", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Invinte a friend", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Settings", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40,20,0,10),
        child: Text("Logout", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
      ),
      
      ],),
    );
  }
}
