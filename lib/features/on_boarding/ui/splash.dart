import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/theming/color_manager.dart';
import 'package:flutter_application_1/core/theming/constants_manager.dart';
import 'package:flutter_application_1/core/theming/font_manager.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: AppConstants.splashDelay),
    );

    _animationController.forward();

    // Wrap the navigation logic inside a Future.delayed
    Future.delayed(const Duration(seconds: AppConstants.splashDelay), () {
      // Check if the widget is still mounted before navigating
      if (mounted) {
        // Access the navigator using GoRouter
        context.pushReplacement(AppRouter.crafterhomepath);

//context.pushReplacement(AppRouter.crafterresetpasswordpath);

      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorManager.olive2, ColorManager.olive1],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animationController,
              child: Image.asset(
                'assets/images/img_logo.png',
                width: 150.w,
                height: 300.h,
              ),
            ),
            Text("Handicrafts",
                style: TextStyle(
                  fontSize: FontSize.s22,
                  fontWeight: FontWeightManager.bold,
                  color: ColorManager.white,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.w,
                ),
                Text("Community",
                    style: TextStyle(
                        fontFamily: 'Pristina',
                        fontWeight: FontWeightManager.thin,
                        fontSize: FontSize.s21,
                        color: ColorManager.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

