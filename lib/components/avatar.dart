import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final bool hasStory;

  const Avatar({
    Key? key,
    required this.imageUrl,
    this.radius = 24,
    this.hasStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: hasStory
            ? const LinearGradient(
                colors: [
                  Color(0xFF9B2282),
                  Color(0xFFEEA863),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
} 