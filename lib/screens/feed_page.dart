import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../widgets/post_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil facebook')),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          ...posts.map((p) => PostCard(post: p)),
          ...posts.map((p) => PostCard(post: p)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
