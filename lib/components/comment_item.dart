import 'package:flutter/material.dart';
import 'avatar.dart';

class CommentItem extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final String comment;

  const CommentItem({
    Key? key,
    required this.userName,
    required this.userAvatarUrl,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(imageUrl: userAvatarUrl, radius: 16),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: userName + ' ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: comment),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 