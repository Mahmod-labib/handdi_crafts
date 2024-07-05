import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_application_1/features/customer/home/ui/crafts.dart';
import 'package:flutter_application_1/features/customer/home/ui/home.dart';
import 'package:flutter_application_1/features/customer/instore_and_online_workshop/ui/mycourses.dart';
import 'package:flutter_application_1/features/customer/profile/ui/profile.dart';
import 'package:go_router/go_router.dart';

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
    Crafts(),
    MyCourses(),
    CustomerHome(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
    mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Positioned(
            bottom: 0,

            left: 10,
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
                      onPressed: () {
                        context.pushReplacement(AppRouter.mycoursespath);
                      },
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
                            context.pushReplacement(AppRouter.customerhomepath);

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
                            context.pushReplacement(AppRouter.categoryproductsspath);
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
                            context.pushReplacement(AppRouter.categoryproductsspath);

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
                            context.pushReplacement(AppRouter.profilepath);

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
