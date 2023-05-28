import 'package:factory_pattern/models/person.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Person person = Person.fromMap({'name': 'Ahmad', 'age': 21});
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(person.name),
      ),
    );
  }
}
