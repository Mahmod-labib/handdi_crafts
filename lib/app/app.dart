import 'package:flutter/material.dart';
import 'package:flutter_application_1/featurae/onboarding/splash/ui/splash.dart';

import '../core/theming/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      home: SplashScreen(),
    );
  }
}
