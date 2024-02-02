import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/widget/school_box.dart';

class TeacherBox extends SchoolBox {
  const TeacherBox({super.key,super.arguments});

  @override
  content() {
    final content = arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.yellow,
        ));
  }

}
