import 'package:flutter/material.dart';
import 'package:flutter_abstract_factory/platform_button.dart';
import 'package:flutter_abstract_factory/platform_progress_indicator.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, Widget child, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImplementation implements AbstractFactory{
  @override
  Widget buildButton(BuildContext context, Widget child, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(onPressed, child);
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}