import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_provider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello Flutter Islamabad! :)",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 26.0),
            Text(
              app.currentVal.toString(),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
