import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/responsive_handler/size_provider.dart';
import 'package:flutter_application_1/core/responsive_handler/sizer_helper_extension.dart';
import 'package:flutter_application_1/core/theming/routes_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theming/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 612),
      builder: (context, _) {
        return SizeProvider(
          baseSize: const Size(375, 612),
          height: context.screenHeight,
          width: context.screenWidth,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(),
            routerConfig: router(),
          ),
        );
      },
    );
  }
}
