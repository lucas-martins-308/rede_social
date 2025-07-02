import 'package:flutter/material.dart';
import '../components/story_item.dart';
import '../components/post_item.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stories = [
      {'userName': 'seu_story', 'userAvatarUrl': 'https://randomuser.me/api/portraits/men/1.jpg', 'hasStory': false},
      {'userName': 'amigo1', 'userAvatarUrl': 'https://randomuser.me/api/portraits/women/2.jpg', 'hasStory': true},
      {'userName': 'amigo2', 'userAvatarUrl': 'https://randomuser.me/api/portraits/men/3.jpg', 'hasStory': true},
      {'userName': 'amigo3', 'userAvatarUrl': 'https://randomuser.me/api/portraits/women/4.jpg', 'hasStory': false},
      {'userName': 'amigo4', 'userAvatarUrl': 'https://randomuser.me/api/portraits/men/5.jpg', 'hasStory': true},
    ];
    final posts = [
      {
        'userName': 'amigo1',
        'userAvatarUrl': 'https://randomuser.me/api/portraits/women/2.jpg',
        'postImageUrl': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
        'caption': 'Curtindo o dia!',
        'hasStory': true,
      },
      {
        'userName': 'amigo2',
        'userAvatarUrl': 'https://randomuser.me/api/portraits/men/3.jpg',
        'postImageUrl': 'https://images.unsplash.com/photo-1465101046530-73398c7f28ca',
        'caption': 'Natureza linda.',
        'hasStory': true,
      },
      {
        'userName': 'amigo3',
        'userAvatarUrl': 'https://randomuser.me/api/portraits/women/4.jpg',
        'postImageUrl': 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308',
        'caption': '',
        'hasStory': false,
      },
    ];
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: stories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final story = stories[index];
                  return StoryItem(
                    userName: story['userName'] as String,
                    userAvatarUrl: story['userAvatarUrl'] as String,
                    hasStory: story['hasStory'] as bool,
                  );
                },
              ),
            ),
          ),
          const Divider(height: 1),
          ...posts.map((post) => PostItem(
                userName: post['userName'] as String,
                userAvatarUrl: post['userAvatarUrl'] as String,
                postImageUrl: post['postImageUrl'] as String,
                caption: post['caption'] as String?,
                hasStory: post['hasStory'] as bool,
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Novo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
} 