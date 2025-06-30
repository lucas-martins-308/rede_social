import 'package:flutter/material.dart';
import '../components/avatar.dart';
import '../components/comment_item.dart';

class PostDetailScreen extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final String postImageUrl;
  final String? caption;
  final bool hasStory;

  const PostDetailScreen({
    Key? key,
    required this.userName,
    required this.userAvatarUrl,
    required this.postImageUrl,
    this.caption,
    this.hasStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final comments = [
      {
        'userName': 'amigo2',
        'userAvatarUrl': 'https://randomuser.me/api/portraits/men/3.jpg',
        'comment': 'Que foto linda!'
      },
      {
        'userName': 'amigo3',
        'userAvatarUrl': 'https://randomuser.me/api/portraits/women/4.jpg',
        'comment': 'Amei!'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              postImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Avatar(imageUrl: userAvatarUrl, hasStory: hasStory),
                const SizedBox(width: 8),
                Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          if (caption != null && caption!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text(caption!),
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
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: const Text('Comentários', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ...comments.map((c) => CommentItem(
                userName: c['userName']!,
                userAvatarUrl: c['userAvatarUrl']!,
                comment: c['comment']!,
              )),
        ],
      ),
    );
  }
} 