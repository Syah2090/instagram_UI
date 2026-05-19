import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isOwnStory;

  const StoryItem({
    super.key,
    required this.name,
    required this.imagePath,
    this.isOwnStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isOwnStory
                      ? null
                      : const LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.orange,
                            Colors.purple,
                          ],
                        ),
                  border: isOwnStory
                      ? Border.all(color: Colors.grey, width: 2)
                      : null,
                ),
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(imagePath),
                ),
              ),

              // Tombol +
              if (isOwnStory)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}