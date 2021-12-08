import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/models.dart';

// Mock recipe service that grabs sample json data to mock recipe request/response
class MockTodoService {
  // Batch request that gets both today recipes and friend's feed
  Future<TodoListData> getTodoData() async {
    final _todos = await _getTodos();
    return TodoListData(_todos);
  }

  Future<List<Todo>> _getTodos() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final dataString = await _loadAsset(
      'assets/data/todos.json',
    );
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['todos'] != null) {
      final recipes = <Todo>[];
      json['todos'].forEach((v) {
        recipes.add(Todo.fromJson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
