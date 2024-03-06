import 'package:flutter/material.dart';
import 'package:x/myHomePg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    MyHomePg pg1 =  MyHomePg(appColorHomePage: Colors.white);
    return pg1;
  }
}