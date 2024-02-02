import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/base/base_stateless_widget.dart';

class SchoolBox extends BaseStatelessWidget {
  const SchoolBox({super.key,super.arguments});

  @override
  Widget build(BuildContext context) {
    final size = double.parse((arguments?['size'] ?? 50).toString());
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.only(bottom: 12),
      color: Colors.cyan,
      alignment: Alignment.center,
      child: content(),
    );
  }

  content() {
    final content = arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ));
  }

}
