// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task4/contacts.dart';

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
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/01.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "chats",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.white),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.edit),
            ),
          ),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10 ,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Search",
                  fillColor: Colors.blueGrey[200],
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
             
              myRow(),
              myColum()
            ],
          ),
        ),
      ),
    );
  }
}
