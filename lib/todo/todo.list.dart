import 'package:flutter/material.dart';
import 'package:splashun_flutter/models/todo.model.dart';
import 'package:splashun_flutter/todo/todo.service.dart';

class TodoListPage extends StatefulWidget {
  TodoService todoService;
  TodoListPage() {
    todoService = new TodoService();
  }
  @override
  State<StatefulWidget> createState() {
    return _TodoListPageState(todoService);
  }
}

class _TodoListPageState extends State<TodoListPage> {
  TodoService todoService;

  List<TodoModel> todoList = [];

  _TodoListPageState(this.todoService);

  @override
  void initState() {
    super.initState();
    setState(() {
      todoService.getTodoItems().then((value) {
        todoList = value;
       
      });
    });
  }

  Widget _buildTodoList(BuildContext context, int index) {
    return Text(
      todoList[index].name,
      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
          itemBuilder: _buildTodoList, itemCount: todoList.length),
    );
  }
}
