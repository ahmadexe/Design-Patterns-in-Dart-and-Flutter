import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory/abstract_factory.dart';
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
            AbstractFactoryImplementation()
                .buildButton(context, const Text("Hello"), () {
              debugPrint("Hello");
            }),
            const SizedBox(height: 10),
            AbstractFactoryImplementation().buildIndicator(context),
          ],
        ),
      ),
    );
  }
}
