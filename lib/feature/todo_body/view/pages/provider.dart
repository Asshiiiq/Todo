import 'package:flutter/material.dart';

class Todo {
  final String emoji;
  final String title;
  final String task;

  Todo({required this.emoji, required this.title, required this.task});
}

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String emoji, String title, String task) {
    _todos.add(Todo(emoji: emoji, title: title, task: task));
    notifyListeners();
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
