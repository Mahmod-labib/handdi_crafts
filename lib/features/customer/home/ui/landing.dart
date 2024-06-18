import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/customer/home/widget/custom_bnb.dart';

import 'home.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      CustomerHome(),
      CustomerHome(),
      CustomerHome(),
      CustomerHome(),
      CustomerHome(),
    ];
    return  Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body:CustomerHome() ,
    );
  }
}
