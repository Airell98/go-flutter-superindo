import 'package:flutter/material.dart';

import 'widgets.dart';
import '../models/models.dart';

class CommentTile extends StatelessWidget {
  final Comment post;

  const CommentTile({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('${post.profileImageUrl}'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                '${post.timestamp} mins ago',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
