import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../models/models.dart';

class TodoListView extends StatelessWidget {
  final List<Todo> todos;

  const TodoListView({
    Key? key,
    required this.todos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final recipe = todos[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(Todo todo) {
    if (todo.tag == 'general') {
      return Card1(todo: todo);
    } else if (todo.tag == 'important') {
      return Card2(todo: todo);
    } else {
      throw Exception("This card doesn't exist yet");
    }
  }
}
