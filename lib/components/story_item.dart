import 'package:flutter/material.dart';
import 'avatar.dart';

class StoryItem extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final bool hasStory;

  const StoryItem({
    Key? key,
    required this.userName,
    required this.userAvatarUrl,
    this.hasStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Avatar(imageUrl: userAvatarUrl, hasStory: hasStory),
        const SizedBox(height: 4),
        SizedBox(
          width: 56,
          child: Text(
            userName,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
} 