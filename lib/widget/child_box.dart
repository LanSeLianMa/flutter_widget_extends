import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/widget/parent_box.dart';

class ChildBox extends ParentBox {
  const ChildBox({super.key,super.arguments});

  @override
  ChildBoxState<ChildBox> createState() => ChildBoxState();
}

class ChildBoxState<T extends ChildBox> extends ParentBoxState<ChildBox> {

  @override
  content() {
    final content = widget.arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ));
  }

}
