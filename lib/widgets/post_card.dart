import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String username;
  final String imagePath;
  final String profilePath;

  const PostCard({
    super.key,
    required this.username,
    required this.imagePath,
    required this.profilePath,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Post
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(widget.profilePath),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Bersponsor',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ],
          ),
        ),

        // Gambar Post
        Image.asset(
          widget.imagePath,
          width: double.infinity,
          height: 380,
          fit: BoxFit.cover,
        ),

        // Action Buttons
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              GestureDetector(
                onTap: toggleLike,
                child: Icon(
                  isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 28,
                  color:
                      isLiked ? Colors.red : Colors.white,
                ),
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.chat_bubble_outline,
                size: 26,
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.send_outlined,
                size: 26,
                color: Colors.white,
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border,
                size: 28,
                color: Colors.white,
              ),
            ],
          ),
        ),

        // Informasi Like
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Text(
            isLiked ? 'Anda menyukai postingan ini' : '',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}