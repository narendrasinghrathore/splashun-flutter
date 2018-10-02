import 'package:flutter/material.dart';
import 'package:splashun_flutter/home/home.page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromRGBO(0, 128, 32, 1.0),
      appBar: new AppBar(title: new Text("Main Page")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Welcome"),
              onPressed: () {
                Navigator.pushReplacementNamed(context,'home');
              },
            )
          ],
        ),
      ),
    );
  }
}
