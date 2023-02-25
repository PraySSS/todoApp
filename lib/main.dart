import 'package:flutter/material.dart';
import 'package:flutter_learning/screen/add_todo_screen.dart';
import 'package:flutter_learning/screen/listtile_custom_screen.dart';
import 'package:flutter_learning/screen/listview_screen.dart';
import 'package:flutter_learning/screen/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //

        fontFamily: 'Outfit',
        primarySwatch: Colors.blue,
      ),
      home: SigninScreen(),
    );
  }
}
