import 'package:flutter/material.dart';
import 'package:splashun_flutter/todo/todo.add.dart';
import 'package:splashun_flutter/todo/todo.list.dart';

class TodoPage extends StatefulWidget {
  final String title;
  TodoPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return _TodoPageState(title: this.title);
  }
}

class _TodoPageState extends State<TodoPage> {
  String _title;
  _TodoPageState({String title}) {
    this._title = title;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _title,
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('List'),
                icon: Icon(Icons.list),
              ),
              Tab(
                child: Text('Add New'),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TodoListPage(),
            TodoAddPage(),
          ],
        ),
      ),
    );
  }
}
