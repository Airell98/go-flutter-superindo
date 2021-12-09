part of 'todo.dart';

class Comment {
  String id;
  String profileImageUrl;
  String comment;
  String timestamp;

  Comment({
    required this.id,
    required this.profileImageUrl,
    required this.comment,
    this.timestamp = '',
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      comment: json['comment'] ?? '',
      timestamp: json['timestamp'] ?? '',
    );
  }
}
