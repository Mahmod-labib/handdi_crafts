import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/home/ui/crafts.dart';
import 'package:flutter_application_1/features/customer/profile/ui/profile.dart';
import 'package:flutter_application_1/widgets/bottom_navigation_bar.dart';
import '../../home/ui/home.dart';
import '../../instore_and_online_workshop/ui/mycourses.dart';

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
    final List<Widget> screens = [
      const CustomerHome(),
      const Crafts(),
      const MyCourses(),
      const CustomerHome(),
      const Profile(),
    ];
    return  Scaffold(
     bottomNavigationBar: AnimatedBottomNavigationBar(currentIndex: _selectedIndex, onTap: _onItemTapped,),
      //floatingActionButton: BottomNavBar(),
    //body: CustomerHome(),
body:screens[_selectedIndex],
    );
  }
}
