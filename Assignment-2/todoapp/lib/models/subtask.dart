part of 'todo.dart';

class Subtask {
  String title;
  bool status;

  Subtask({
    required this.title,
    required this.status,
  });

  factory Subtask.fromJson(Map<String, dynamic> json) {
    return Subtask(
      title: json['title'] ?? '',
      status: json['status'] ?? '',
    );
  }
}
