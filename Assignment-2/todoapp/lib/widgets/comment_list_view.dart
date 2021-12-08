import 'package:flutter/material.dart';
import 'widgets.dart';
import '../models/models.dart';

class CommentListView extends StatelessWidget {
  final List<Comment> comments;

  const CommentListView({
    Key? key,
    required this.comments,
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
            'List of Comments',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 16),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final post = comments[index];
              return CommentTile(post: post);
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
