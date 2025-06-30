import 'package:flutter/material.dart';
import 'avatar.dart';

class PostItem extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final String postImageUrl;
  final String? caption;
  final bool hasStory;

  const PostItem({
    Key? key,
    required this.userName,
    required this.userAvatarUrl,
    required this.postImageUrl,
    this.caption,
    this.hasStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                    arguments: {
                      'userName': userName,
                      'userAvatarUrl': userAvatarUrl,
                    },
                  );
                },
                child: Avatar(imageUrl: userAvatarUrl, hasStory: hasStory),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                    arguments: {
                      'userName': userName,
                      'userAvatarUrl': userAvatarUrl,
                    },
                  );
                },
                child: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/post',
              arguments: {
                'userName': userName,
                'userAvatarUrl': userAvatarUrl,
                'postImageUrl': postImageUrl,
                'caption': caption,
                'hasStory': hasStory,
              },
            );
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              postImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, size: 28),
              SizedBox(width: 16),
              Icon(Icons.mode_comment_outlined, size: 28),
              SizedBox(width: 16),
              Icon(Icons.send, size: 28),
              Spacer(),
              Icon(Icons.bookmark_border, size: 28),
            ],
          ),
        ),
        if (caption != null && caption!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: userName + ' ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: caption),
                ],
              ),
            ),
          ),
        const SizedBox(height: 12),
      ],
    );
  }
} 