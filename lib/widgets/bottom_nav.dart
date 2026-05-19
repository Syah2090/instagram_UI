// lib/widgets/bottom_nav.dart

import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/reels_page.dart';
import '../pages/profile_page.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;

  const BottomNav({
    super.key,
    this.currentIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      onTap: (index) {

        // jika item yang ditekan sama
        if (index == currentIndex) return;

        // HOME
        if (index == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }

        // REELS
        else if (index == 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ReelsPage(),
            ),
          );
        }

        // TAMBAH POST
        else if (index == 2) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tambah Post'),
            ),
          );
        }

        // SEARCH
        else if (index == 3) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Search'),
            ),
          );
        }

        // PROFILE
        else if (index == 4) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        }
      },

      items: const [

        // HOME
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: '',
        ),

        // REELS
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video_outlined),
          activeIcon: Icon(Icons.ondemand_video),
          label: '',
        ),

        // ADD POST
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: '',
        ),

        // SEARCH
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),

        // PROFILE
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage:
                AssetImage('assets/images/profile.jpeg'),
          ),
          label: '',
        ),
      ],
    );
  }
}