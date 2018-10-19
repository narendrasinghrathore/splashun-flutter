import 'dart:async';
import 'dart:convert';
import 'package:splashun_flutter/models/todo.model.dart';
import 'package:splashun_flutter/services/http.service.dart';

class TodoService {
  HttpService http;
  final List<TodoModel> todoList = [];

  TodoService() {
    if (http == null) {
      http = new HttpService();
    }
  }

  addTodoItem(String item) {
    http.addTodoItem(item).then((onValue) {
      Map<String, dynamic> reponseData = json.decode(onValue.body);
      this.todoList.add(new TodoModel(id: reponseData['name'], name: item));
    });
  }

  Future<List<TodoModel>> getTodoItems() {
    Completer c = new Completer();
    todoList.clear();
    http.getTodoItems().then((onValue) {
      final Map<String, dynamic> responseData = json.decode(onValue.body);
      responseData.forEach((String key, dynamic data) {
        todoList.add(TodoModel(id: key.toString(), name: data['name']));
      });
      c.complete(todoList);
    });
    return c.future;
  }
}
