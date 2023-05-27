import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_provider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(app.currentVal.toString(), style: const TextStyle(fontSize: 24.0))
      ),
    );
  }
}