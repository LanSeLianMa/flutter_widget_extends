import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/base/base_stateful_widget.dart';

class ParentBox extends BaseStatefulWidget {
  const ParentBox({super.key,super.arguments});

  @override
  ParentBoxState<ParentBox> createState() => ParentBoxState();
}

class ParentBoxState<T extends ParentBox> extends BaseStatefulWidgetState<ParentBox> {

  @override
  Widget build(BuildContext context) {
    final size = double.parse((widget.arguments?['size'] ?? 50).toString());
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.only(bottom: 12),
      color: Colors.green,
      alignment: Alignment.center,
      child: content(),
    );
  }

  content() {
    final content = widget.arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.yellow,
        ));
  }

}
