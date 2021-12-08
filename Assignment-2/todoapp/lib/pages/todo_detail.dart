import 'package:flutter/material.dart';
import 'package:todoapp/models/models.dart';
import 'package:todoapp/widgets/widgets.dart';

class TodoDetailScreen extends StatelessWidget {
  final Todo todo;
  const TodoDetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // scrollDirection: Axis.vertical,
              children: <Widget>[
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        '${todo.backgroundImage}',
                        alignment: Alignment.topLeft,
                        fit: BoxFit.contain,
                        width: size.width,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                        child: const BackButton(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    todo.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Chip(
                    label: Text('${todo.startDate} --till-- ${todo.dueDate}'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                  child: Text(
                    '${todo.subtitle}\n${todo.description}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SubtaskListView(tasks: todo.subtasks ?? []),
                CommentListView(comments: todo.comments ?? []),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
