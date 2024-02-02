import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/widget/teacher_box.dart';

class StudentBox extends TeacherBox {
  const StudentBox({super.key,super.arguments});

  @override
  content() {
    final content = arguments?['content'];
    return Text(content,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.greenAccent,
        ));
  }

}
