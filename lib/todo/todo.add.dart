import 'package:flutter/material.dart';
import 'package:splashun_flutter/todo/todo.service.dart';

class TodoAddPage extends StatefulWidget {
  TodoService todoService;

  TodoAddPage() {
    this.todoService = new TodoService();
  }

  @override
  State<StatefulWidget> createState() {
    return _TodoAddPageState(todoService);
  }
}

class _TodoAddPageState extends State<TodoAddPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TodoService todoService;
  String item = '';

  @override
  initState() {
    super.initState();
  }

  _TodoAddPageState(this.todoService);

  void addTodoItem() {
    _formKey.currentState.save();
    this.todoService.addTodoItem(item);
    _formKey.currentState.reset();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'add'.toUpperCase(),
                ),
                onSaved: (val) {
                  setState(() {
                    item = val;
                  });
                },
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: addTodoItem,
              )
            ],
          ),
        ));
  }
}
