import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNav(currentIndex: 1),
      body: SafeArea(
        child: Stack(
          children: [
            // Background video/image
            Positioned.fill(
              child: Image.asset(
                'assets/images/pemuda.jpeg',
                fit: BoxFit.cover,
              ),
            ),

            // Gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.transparent,
                      Colors.black.withOpacity(0.6),
                    ],
                  ),
                ),
              ),
            ),

            // Top Bar
            Positioned(
              top: 20,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Reels',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),

            // Right Side Actions
            Positioned(
              right: 12,
              bottom: 140,
              child: Column(
                children: [
                  _buildAction(Icons.favorite_border, '234k'),
                  const SizedBox(height: 20),
                  _buildAction(Icons.chat_bubble_outline, '1,234'),
                  const SizedBox(height: 20),
                  _buildAction(Icons.send_outlined, ''),
                  const SizedBox(height: 20),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 28,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/profile.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Content
            Positioned(
              left: 16,
              right: 80,
              bottom: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Info
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage:
                            AssetImage('assets/images/pemuda.jpeg'),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'kamada.oo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                        ),
                        child: const Text('Ikuti'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Caption
                  const Text(
                    'Terlihat Seorang pemuda yang gagah sedang\n'
                    'Menaiki sebuah perahu bersama teman temanya\n'
                    'VIRALL"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    '4 hari yang lalu',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    '🎵 Pemuda Tampang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildAction(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 34,
        ),
        if (label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}