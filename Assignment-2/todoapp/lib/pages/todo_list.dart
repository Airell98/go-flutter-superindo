import 'package:flutter/material.dart';
import '../services/mock_app_service.dart';
import '../widgets/widgets.dart';
import '../models/models.dart';

class TodoListScreen extends StatelessWidget {
  final mockService = MockTodoService();

  TodoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getTodoData(),
      builder: (context, AsyncSnapshot<TodoListData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodoListView(todos: snapshot.data?.todos ?? []),
              const SizedBox(height: 16),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
