// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int Counter1 = 0;
  int Counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        leading: Icon(Icons.home),
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'cursive',
          ),
        ),
      ),
      body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
      Container(child: IntrinsicHeight(child: rowBaker(1),),decoration : BoxDecoration(border:Border.all(color: Colors.black,), )),
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
        child: Divider(color: Colors.black , ),
      ),
      IntrinsicHeight(child: rowBaker(1),),
      SizedBox(height: 50,),
      MaterialButton(
          onPressed: () {
            setState(
              () {
                Counter1 = 0;
                Counter2 = 0;
              },
            );
          },
          minWidth: 120,
          padding: EdgeInsets.all(10),
          color: Colors.blueGrey,
          child: Text('RESET'))
              ],
            ),
    );
  }

//make row of 3 buttons and 2 text to show the score
  Row rowBaker(int teamNumber) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              teamNumber == 1 ? 'Team A' : 'Team B',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              teamNumber == 1 ? '$Counter1' : '$Counter2',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        // Container(child :VerticalDivider()),
        Center(child: VerticalDivider(color: Colors.black,endIndent: 10,thickness: 2,),),
        
        Column(
          children: [
            buttonBaker(1, teamNumber),
            SizedBox(height: 10),
            buttonBaker(2, teamNumber),
            SizedBox(height: 10),
            buttonBaker(3, teamNumber),
          ],
        ),
      ],
    );
  }

  MaterialButton buttonBaker(int i, int team) {
    return MaterialButton(
      onPressed: () {
        setState(
          () {
            team == 1 ? Counter1 += i : Counter2 += i;
          },
        );
      },
      minWidth: 120,
      padding: EdgeInsets.all(10),
      color: Colors.blueGrey,
      child: i == 1 ? Text('Add 1 Point') : Text('Add $i Points'),
    );
  }
}
