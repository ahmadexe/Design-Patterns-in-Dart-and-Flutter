import 'package:flutter/material.dart';
import 'package:observer_and_state/app_provider.dart';
import 'package:observer_and_state/screen_one.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: const MaterialApp(
        home: ScreenOne(),
      ),
    );
  }
}
