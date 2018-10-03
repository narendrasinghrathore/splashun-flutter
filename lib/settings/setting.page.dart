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
            Center(child: Text("Setting Page")),
            RaisedButton(
              child: Text('Show Modal'),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(child:Text('Modal here'));
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
