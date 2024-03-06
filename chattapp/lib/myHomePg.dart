import 'package:chattapp/contacts.dart';
import 'package:chattapp/myDrawer.dart';
import 'package:flutter/material.dart';

class MyHomePg extends StatefulWidget {
  const MyHomePg({super.key});

  @override
  State<MyHomePg> createState() => _MyHomePgState();
}

class _MyHomePgState extends State<MyHomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Messenger",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),

      ),
      drawer: const Drawer( child: MyDrawer(),),
      body: const bodyChatts(),
    );
  }
}