import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/home/ui/crafts.dart';
import 'package:flutter_application_1/features/customer/home/ui/mycourses.dart';
import 'package:flutter_application_1/features/customer/home/ui/products_of_category.dart';
import 'package:flutter_application_1/features/customer/home/ui/profile.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_bnb.dart';
import 'package:flutter_application_1/widgets/bottom_navigation_bar.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'home.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      CustomerHome(),
      Crafts(),
      MyCourses(),
      CustomerHome(),
      Profile(),
    ];
    return  Scaffold(
     bottomNavigationBar: AnimatedBottomNavigationBar(currentIndex: _selectedIndex, onTap: _onItemTapped,),
body:_screens[_selectedIndex],
    );
  }
}
