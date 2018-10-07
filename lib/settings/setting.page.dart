import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingPageState();
  }
}

class _SettingPageState extends State<SettingPage> {
  String _name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Center(child: Text("Setting Page $_name")),
          RaisedButton(
            child: Text('Show Modal'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Center(child: Text('Modal here'));
                  });
            },
          ),
          TextField(
            decoration: InputDecoration(
                helperText: 'Enter your name here',
                labelText: 'Name',
                prefixIcon: Icon(Icons.supervised_user_circle)),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          )
        ],
      ),
    );
  }
}
