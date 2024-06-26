import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/features/customer/home/ui/home.dart';
import 'package:flutter_application_1/features/customer/home/ui/payment_order_done.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  setBottomBarIndex(int index) {
    setState(() {
      currentIndex = index;
      print('Current Index: $currentIndex');
    });
  }

  final List<Widget> pages = [
CustomerHome(),
    Center(child: Text("Page 2")),
    Center(child: Text("Page 3")),
    Center(child: Text("Page 4")),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      //body: pages[currentIndex], // Ensure this is the correct widget list
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      backgroundColor: ColorManager.beige,
                      child: const Icon(Icons.play_arrow),
                      elevation: 0.1,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home_outlined,
                            color: currentIndex == 0
                                ? ColorManager.beige
                                : ColorManager.white2,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.window_outlined,
                            color: currentIndex == 1
                                ? ColorManager.beige
                                : ColorManager.white2,
                          ),
                          onPressed: () {
                            setBottomBarIndex(1);
                          },
                        ),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.email_outlined,
                            color: currentIndex == 2
                                ? ColorManager.beige
                                : ColorManager.white2,
                          ),
                          onPressed: () {
                            setBottomBarIndex(2);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.person_2_outlined,
                            color: currentIndex == 3
                                ? ColorManager.beige
                                : ColorManager.white2,
                          ),
                          onPressed: () {
                            setBottomBarIndex(3);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
     // backgroundColor: Colors.white.withAlpha(55),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  final Rect rect = const Rect.fromLTWH(0.0, 0.0, 375, 80);

  @override
  final Gradient gradient = LinearGradient(
    colors: [ColorManager.olive2, ColorManager.olive1],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
