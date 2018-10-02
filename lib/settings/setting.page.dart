import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(child: Text("Setting Page"),)
          ],
        ),
      ),
    );
  }
}
