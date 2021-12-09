import 'package:flutter/material.dart';

import 'widgets.dart';
import '../models/models.dart';

class SubtaskTile extends StatelessWidget {
  final Subtask task;

  const SubtaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularCheckBox(
        color: Colors.red,
        uncheckedColor: Colors.yellow,
        checked: task.status,
        onChange: (value) {
          final snackBar = SnackBar(
            content: const Text('Checked Action!'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
      title: Text(
        task.title,
        style: TextStyle(
          decoration:
              task.status ? TextDecoration.lineThrough : TextDecoration.none,
          fontWeight: FontWeight.w500,
          color: task.status ? Colors.white24 : Colors.white70,
        ),
      ),
      trailing: Icon(
        Icons.tag,
        color: Colors.blue,
      ),
      onLongPress: () {
        final snackBar = SnackBar(
          content: const Text('Edit Action!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
