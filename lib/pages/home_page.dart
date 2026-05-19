import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/post_card.dart';
import '../widgets/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data stories sesuai file gambar Anda (.jpeg)
    final List<Map<String, String>> stories = [
      {
        'name': 'Cerita Anda',
        'image': 'assets/images/profile.jpeg',
      },
      {
        'name': 'Aisyah',
        'image': 'assets/images/story1.jpeg',
      },
      {
        'name': 'Fadhil',
        'image': 'assets/images/story2.jpeg',
      },
      {
        'name': 'Jack',
        'image': 'assets/images/story3.jpeg',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // =========================
            // APP BAR INSTAGRAM
            // =========================
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // Jika sudah menambahkan font Billabong,
                      // aktifkan baris berikut:
                      // fontFamily: 'Billabong',
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 28,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // =========================
            // STORIES
            // =========================
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return StoryItem(
                    name: stories[index]['name']!,
                    imagePath: stories[index]['image']!,
                    isOwnStory: index == 0,
                  );
                },
              ),
            ),

            const Divider(
              color: Colors.white24,
              height: 1,
            ),

            // =========================
            // FEED
            // =========================
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    PostCard(
                      username: 'infosukamara_id',
                      imagePath: 'assets/images/post.jpeg',
                      profilePath: 'assets/images/profile.jpeg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // =========================
      // BOTTOM NAVIGATION
      // =========================
      bottomNavigationBar: const BottomNav(
        currentIndex: 0, // Home aktif
      ),
    );
  }
}

