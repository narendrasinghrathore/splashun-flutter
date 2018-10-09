import 'package:flutter/material.dart';
import './todo.service.dart';

class TodoListPage extends StatefulWidget {
  TodoService todoService;
  TodoListPage() {
    this.todoService = new TodoService();
  }
  @override
  _TodoListPage createState() {
    // TODO: implement createState
    return _TodoListPage(this.todoService);
  }
}

class _TodoListPage extends State<TodoListPage> {
  @override
  initState() {
    super.initState();
    print('Was called');
  }

  TodoService todoService;

  _TodoListPage(this.todoService);

  Widget _buildTodoList(BuildContext context, int index) {
    print(this.todoService.todoList[index].name);
    return Text(this.todoService.todoList[index].name);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          itemBuilder: _buildTodoList,
          itemCount: this.todoService.todoList.length),
    );
  }
}
