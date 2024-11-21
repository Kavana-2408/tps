import 'package:flutter/material.dart';
import 'package:tps/search.dart';

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFE8ECF4),
      selectedItemColor: const Color(0xFF1E3A8A),
      unselectedItemColor: Colors.black54,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        // Handle navigation when an item is tapped
        if (index == 0) {
          // Navigate to Home
        } else if (index == 1) {
          // Navigate to Search
        Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SearchScreen()),
);

        } else if (index == 2) {
          // Navigate to Profile
        }
      },
    );
  }
}
