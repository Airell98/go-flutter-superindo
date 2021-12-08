part 'subtask.dart';

part 'comment.dart';

// class RecipeCardType {
//   static const card1 = 'card1';
//   static const card2 = 'card2';
//   static const card3 = 'card3';
// }

class Todo {
  String id;
  String tag;
  String title;
  String subtitle;
  String backgroundImage;
  String backgroundImageSource;
  String userName;
  String userImage;
  String startDate;
  String dueDate;
  double progress;
  bool status;
  String description;
  List<Subtask> subtasks;
  List<Comment> comments;

  Todo({
    required this.id,
    required this.tag,
    required this.title,
    this.subtitle = '',
    this.backgroundImage = '',
    this.backgroundImageSource = '',
    this.userName = '',
    this.userImage = '',
    this.startDate = '',
    this.dueDate = '',
    this.progress = 0,
    this.status = false,
    this.description = '',
    this.subtasks = const [],
    this.comments = const [],
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    final subtasks = <Subtask>[];
    final comments = <Comment>[];

    if (json['subtasks'] != null) {
      json['subtasks'].forEach((v) {
        subtasks.add(Subtask.fromJson(v));
      });
    }

    if (json['comments'] != null) {
      json['comments'].forEach((v) {
        comments.add(Comment.fromJson(v));
      });
    }

    return Todo(
      id: json['id'] ?? '',
      tag: json['tag'] ?? '',
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      backgroundImage: json['backgroundImage'] ?? '',
      backgroundImageSource: json['backgroundImageSource'] ?? '',
      userName: json['userName'] ?? '',
      userImage: json['userImage'] ?? '',
      startDate: json['startDate'] ?? '',
      dueDate: json['dueDate'] ?? '',
      progress: json['progress'].toDouble() ?? 0,
      status: json['status'] ?? '',
      description: json['description'] ?? '',
      subtasks: subtasks,
      comments: comments,
    );
  }
}
