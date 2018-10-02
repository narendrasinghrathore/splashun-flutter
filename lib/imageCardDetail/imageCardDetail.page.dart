import 'dart:async';

import "package:flutter/material.dart";

class ImageCardDetailPage extends StatelessWidget {
  String _text;

  ImageCardDetailPage(this._text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: new Scaffold(
            backgroundColor: new Color.fromRGBO(255, 255, 255, 1.0),
            appBar: new AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: new Text('Image Detail'),
              backgroundColor: Color.fromRGBO(0, 153, 51, 1.0),
            ),
            body: new Container(
              padding: EdgeInsets.all(10.0),
              child: new Column(children: <Widget>[
                new Text('Index is: $_text'),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: new Text("Back"),
                    )
                  ],
                )
              ]),
            )));
  }
}
