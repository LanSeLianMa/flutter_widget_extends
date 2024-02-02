import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/widget/child_box.dart';

class PosterityBox extends ChildBox {
  const PosterityBox({super.key,super.arguments});

  @override
  ChildBoxState<ChildBox> createState() => PosterityBoxState();
}

class PosterityBoxState<T extends PosterityBox> extends ChildBoxState<PosterityBox> {

  @override
  content() {
    final content = widget.arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ));
  }

}
