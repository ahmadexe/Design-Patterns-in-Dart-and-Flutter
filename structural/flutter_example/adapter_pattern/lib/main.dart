import 'package:adapter_pattern/adapter.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final data = TalksRepository.getTalks();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ...data.map(
              (e) => ListTile(
                title: Text(e.speaker),
                subtitle: Text(e.topic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
