import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/responsive_handler/size_provider.dart';
import 'package:flutter_application_1/core/responsive_handler/sizer_helper_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/theming/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;

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
            routerConfig: router,
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(),

          ),
        );
      },
    );
  }
}
