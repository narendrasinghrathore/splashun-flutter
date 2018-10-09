import 'dart:convert';
import 'package:splashun_flutter/models/todo.model.dart';
import 'package:splashun_flutter/services/http.service.dart';

class TodoService {
  HttpService http;
  List<TodoModel> todoList = [];

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

  getTodoItems() {
    // http.getTodoItems().then((onValue) {
    //   Map<String, dynamic 
    // });
  }
}
