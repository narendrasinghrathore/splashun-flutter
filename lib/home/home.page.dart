import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:splashun_flutter/imageCards.dart';
import 'package:splashun_flutter/models/home.model.dart';
import 'package:splashun_flutter/models/photos.model.dart';
import 'package:splashun_flutter/services/http.service.dart';
import 'package:splashun_flutter/settings/setting.page.dart';
import 'package:splashun_flutter/shared/floating-button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _photos = [];
  int _counter = 0;
  double imageHeight = 200.12;
  HttpService _httpService = new HttpService();
  PhotosParam _photoParams = new PhotosParam();

  void _incrementCounter() {
    setState(() {
      _photoParams.orderBy = PhotoOrderBy.Latest;
      _photoParams.perPage = 10;
      _photoParams.page = 1;

      _httpService.fetchImages(_photoParams).then<GetPhotos>((onValue) {
        print(onValue);
      });
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _photos.add('new GetPhotos()');
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(title: Text('Menu'), automaticallyImplyLeading: false),
              ListTile(
                title: Text('Setting'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SettingPage()));
                },
              )
            ],
          ),
        ),
        // backgroundColor: new Color.fromRGBO(255, 255, 255, 1.0),
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
          backgroundColor: Color.fromRGBO(196, 0, 60, 1.0),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Search Images', icon: Icon(Icons.search))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ImageCards(_photos), SettingPage()],
        ),
        floatingActionButton: new MyFloatingButton(
            callFunction:
                _incrementCounter), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
