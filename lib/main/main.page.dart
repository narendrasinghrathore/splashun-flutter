import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    String _password;
    String _email;
    bool _acceptTerms = false;
    // TODO: implement build
    return new Scaffold(
      // backgroundColor: Color.fromRGBO(196, 0, 60, 0.6),
      appBar: new AppBar(
        title: new Text("Main Page"),
        // backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.black,
                    filled: true,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                SwitchListTile(
                  title: Text('Accept Terms'),
                  subtitle: Text('Our Policies'),
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                  value: _acceptTerms,
                ),
                RaisedButton(
                  color: Colors.black54,
                  textColor: Colors.white,
                  child: Text("Welcome"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
