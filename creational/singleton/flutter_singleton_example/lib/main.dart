/*
  * A singleton is used when we need a single instance
  * It is usually used when we are dealing with helper functions, databases etc.
*/

import 'package:flutter/material.dart';
import 'package:flutter_singleton_example/singleton/singleton.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Database db = Database.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(db.text),
      ),
    );
  }
}