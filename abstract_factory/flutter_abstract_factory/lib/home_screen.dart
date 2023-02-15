import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory/platform_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlatformButton(Theme.of(context).platform).build(
              () {
                debugPrint("Hello");
              },
              const Text('Hello'),
            )
          ],
        ),
      ),
    );
  }
}
