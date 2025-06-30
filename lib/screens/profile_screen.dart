import 'package:flutter/material.dart';
import '../components/avatar.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;

  const ProfileScreen({
    Key? key,
    required this.userName,
    required this.userAvatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dados mockados para grid de posts
    final posts = List.generate(9, (i) => 'https://images.unsplash.com/photo-15${i+10}744038136-46273834b3fb');
    return Scaffold(
      appBar: AppBar(
        title: Text(userName, style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Avatar(imageUrl: userAvatarUrl, radius: 40),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        _ProfileStat(count: '12', label: 'Posts'),
                        _ProfileStat(count: '1.2K', label: 'Seguidores'),
                        _ProfileStat(count: '300', label: 'Seguindo'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nome do Usuário', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text('Bio do usuário, descrição ou link', style: TextStyle(color: Colors.black87)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Editar Perfil'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1,
              ),
              itemCount: posts.length,
              itemBuilder: (context, i) => Image.network(posts[i], fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String count;
  final String label;
  const _ProfileStat({required this.count, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
} 