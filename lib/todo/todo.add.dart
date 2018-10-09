import 'package:flutter/material.dart';
import 'package:splashun_flutter/todo/todo.service.dart';

class TodoAddPage extends StatelessWidget {
  String item;
  TodoService todoService;
  TextEditingController textFieldController;

  TodoAddPage() {
    this.todoService = new TodoService();
    this.textFieldController = new TextEditingController();
  }

  _AddTodoItem() {
    this.todoService.addTodoItem(this.item);
    this.textFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      child: ListView(
        children: <Widget>[
          TextField(
            controller: this.textFieldController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'add'.toUpperCase(),
            ),
            onChanged: (val) {
              this.item = val;
            },

          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _AddTodoItem,
          )
        ],
      ),
    );
  }
}
