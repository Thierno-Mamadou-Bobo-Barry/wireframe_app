import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../widgets/friend_avatar.dart';
import '../widgets/post_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil facebook')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover + Avatar
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cover.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 12,
                            offset: Offset(0, 8),
                            color: Color(0x22000000),
                          )
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 42,
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 55),

            const Text(
              'Thierno Mamadou Bobo Barry',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              "Un jour je marcherai bien, mais pas aujourd'hui.",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),

            const SizedBox(height: 12),

            // Bouton modifier profil
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFF1B74E4),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 12,
                      offset: Offset(0, 8),
                      color: Color(0x22000000),
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Modifier le profil',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 18),

            // Section Amis
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 14,
                    offset: Offset(0, 8),
                    color: Color(0x14000000),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Amis',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: friends
                        .map((f) => FriendAvatar(
                            name: f.name,
                            imagePath: f.imagePath))
                        .toList(),
                  ),
                ],
              ),
            ),

            // Section Posts
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 14, vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mes Posts',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.grey.shade800),
                ),
              ),
            ),

            PostCard(post: posts.first),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
