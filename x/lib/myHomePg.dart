// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:x/myDrawer.dart';
import 'package:x/myHomeBody.dart';

class MyHomePg extends StatefulWidget {
  Color appColorHomePage = Colors.white;

  MyHomePg({super.key, required this.appColorHomePage});

  @override
  State<MyHomePg> createState() => _MyHomePgState();
}

// GlobalKey<ScaffoldState> scaffoldKeyDrawer = GlobalKey();

class _MyHomePgState extends State<MyHomePg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        // key: scaffoldKeyDrawer,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.settings_outlined),
          title: CircleAvatar(
              radius: 22, backgroundImage: AssetImage("images/X_Logo2.jpg"),backgroundColor: Colors.white,),
          centerTitle: true,
        ),
        
        endDrawer: Drawer(
          child: MyDrawer()
        ),
        body: MyHomeBody(),
      ),
    );
  }
   
}

