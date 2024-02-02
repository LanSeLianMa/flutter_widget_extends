import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  final Map<String,dynamic>? arguments;
  const BaseStatelessWidget({super.key, this.arguments});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
