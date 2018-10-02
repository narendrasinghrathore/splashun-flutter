import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  final Function callFunction;

  MyFloatingButton({this.callFunction});

  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
      onPressed: callFunction,
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    );
  }
}
