import 'package:flutter/material.dart';
import 'package:flutter_widget_extends/widget/school_box.dart';
import 'package:flutter_widget_extends/widget/student_box.dart';
import 'package:flutter_widget_extends/widget/teacher_box.dart';

class TestStatelessWidget extends StatefulWidget {
  const TestStatelessWidget({super.key});

  @override
  State<TestStatelessWidget> createState() => _TestStatelessWidgetState();
}

class _TestStatelessWidgetState extends State<TestStatelessWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SchoolBox(arguments: {
              'size': 150,
              'content': '父级',
            }),
            TeacherBox(arguments: {
              'size': 200,
              'content': '子级',
            }),
            StudentBox(arguments: {
              'size': 260,
              'content': '子孙级',
            }),
          ],
        ),
      ),
    );
  }

}
