import 'package:flutter/material.dart';

import '../widget/child_box.dart';
import '../widget/parent_box.dart';
import '../widget/posterity_box.dart';

class TestStatefulWidget extends StatefulWidget {
  const TestStatefulWidget({super.key});

  @override
  State<TestStatefulWidget> createState() => _TestStatefulWidgetState();
}

class _TestStatefulWidgetState extends State<TestStatefulWidget> {

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
            ParentBox(arguments: {
              'size': 260,
              'content': '父级',
            }),
            ChildBox(arguments: {
              'size': 200,
              'content': '子级',
            }),
            PosterityBox(arguments: {
              'size': 150,
              'content': '子孙级',
            }),
          ],
        ),
      ),
    );
  }

}