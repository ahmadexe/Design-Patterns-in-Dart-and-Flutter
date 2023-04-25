import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Observer Pattern Demo', home: Home());
  }
}

// ignore: must_be_immutable
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ValueNotifier<int> notifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    notifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count is ${notifier.value}"),
            ElevatedButton(
              onPressed: () {
                notifier.value++;
              },
              child: const Text('Increase!'),
            )
          ],
        ),
      ),
    );
  }
}
