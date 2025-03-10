import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)//make the top bar transparent
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,//remove debug banner
      title: 'ToDo App',
      home: Home(),
    );
  }
}

