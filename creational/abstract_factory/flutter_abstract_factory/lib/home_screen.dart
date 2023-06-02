import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory/abstract_factory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final platformFactory = AbstractFactoryImplementation();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi Guys :)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            platformFactory.buildButton(context, const Text("Hello"), () {
              debugPrint("Hello");
            }),
            const SizedBox(height: 10),
            platformFactory.buildIndicator(context),
          ],
        ),
      ),
    );
  }
}
