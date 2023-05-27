import 'package:flutter/material.dart';
import 'package:observer_and_state/app_provider.dart';
import 'package:provider/provider.dart';

import 'screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(app.currentVal.toString(),
                style: const TextStyle(fontSize: 24.0)),
            ElevatedButton(
              onPressed: () {
                app.increaseVal();
              },
              child: const Text('Tap to Increase!'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScreenTwo(),
                  ),
                );
              },
              child: const Text('Go to Screen Two'),
            ),
          ],
        ),
      ),
    );
  }
}
