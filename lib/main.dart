import 'package:flutter/material.dart';
import 'screens/feed_screen.dart';
import 'screens/post_detail_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: const FeedScreen(),
      routes: {
        '/post': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
          return PostDetailScreen(
            userName: args?['userName'],
            userAvatarUrl: args?['userAvatarUrl'],
            postImageUrl: args?['postImageUrl'],
            caption: args?['caption'],
            hasStory: args?['hasStory'] ?? false,
          );
        },
        '/profile': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
          return ProfileScreen(
            userName: args?['userName'],
            userAvatarUrl: args?['userAvatarUrl'],
          );
        },
      },
    );
  }
}
