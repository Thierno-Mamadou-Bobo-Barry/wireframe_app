class FriendData {
  final String name;
  final String imagePath;
  const FriendData({required this.name, required this.imagePath});
}

class PostData {
  final String author;
  final String time;
  final String imagePath;
  final String caption;
  final int likes;
  final int comments;

  const PostData({
    required this.author,
    required this.time,
    required this.imagePath,
    required this.caption,
    required this.likes,
    required this.comments,
  });
}

const friends = [
  FriendData(name: 'Kindi', imagePath: 'assets/images/friend1.jpg'),
  FriendData(name: 'Binta', imagePath: 'assets/images/friend2.jpg'),
  FriendData(name: 'Mariam', imagePath: 'assets/images/friend3.jpg'),
];

const posts = [
  PostData(
    author: 'Thierno Mamadou Bobo Barry',
    time: 'il y a 5 minutes',
    imagePath: 'assets/images/post1.jpg',
    caption: 'Petit tour au Magic World, on a pris quelques clichés ✨',
    likes: 0,
    comments: 0,
  ),
  PostData(
    author: 'Thierno Mamadou Bobo Barry',
    time: 'il y a 2 jours',
    imagePath: 'assets/images/post2.jpg',
    caption: 'La montagne ça vous gagne 🏔️',
    likes: 38,
    comments: 4,
  ),
];
