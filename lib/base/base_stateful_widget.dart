import 'package:flutter/material.dart';


class BaseStatefulWidget extends StatefulWidget {

  final Map<String,dynamic>? arguments;
  const BaseStatefulWidget({super.key,this.arguments});

  @override
  State<BaseStatefulWidget> createState() => BaseStatefulWidgetState();
}

class BaseStatefulWidgetState<T extends StatefulWidget> extends State<BaseStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

}



