import 'package:flutter/material.dart';
import 'widgets.dart';
import '../models/models.dart';

class SubtaskListView extends StatelessWidget {
  final List<Subtask> tasks;

  const SubtaskListView({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of Tasks',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 16),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return SubtaskTile(task: task);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
