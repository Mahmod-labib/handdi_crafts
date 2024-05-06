
import 'package:flutter/material.dart';

import '../core/theming/color_manager.dart';

class AnimatedBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

   const AnimatedBottomNavigationBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor:ColorManager.olive2,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.window),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_settings_sharp),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}