// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 125, 235, 125),
          leading: const Icon(Icons.account_circle_rounded),
          title: const Text(
            "Home",
            style: TextStyle(fontFamily: 'cursive'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/240587995_2755969531361240_1138959825564473163_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHP0Z_uSnpVjBtUXomaMnQWLfhj-zA_mbct-GP7MD-ZtzbCQG1-45fFF8yzjEVxTY_rv4D-uuPdjZidPz7oYjhW&_nc_ohc=Euiz38q6dngAX9bWsr2&_nc_ht=scontent-hbe1-1.xx&oh=00_AfC1tl6IIMjVkXbApyR6C7sm9XR_0B7mtF5eLnhiR4O84Q&oe=65CC69DC'),
                // 'https://scontent.fcai26-1.fna.fbcdn.net/v/t39.30808-6/336867709_885374026085978_1462946095723194058_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeE1oVyS_dlVgknTrJlXHQmJfq0kKLGPPwt-rSQosY8_C29UCEIq5pIbV6QoRD9yG6HhANLUiLdi3-XyOzNO02aY&_nc_ohc=1u1L6lHVIU0AX_ZlUTL&_nc_ht=scontent.fcai26-1.fna&oh=00_AfB20zhECYiEyG7ecYThmm6QGZMZ84TAkaELxkVatlW9Nw&oe=65CC5188'),

              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(

                  "Yousef Zakaria",
                  // "Ali Gad",

                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'serif',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 10),
                    child: Icon(Icons.call_rounded),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "01550014936",
                      // "01061121037",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'cursive',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Icons.call_rounded),
                  ),
                  Text(
                    "01066893596",
                    // "01270914546",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'cursive',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
