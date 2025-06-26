import 'dart:math';
import 'Module 13/module13.dart'; // Import for Module13 widget

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // <--- Added this import for ScreenUtilInit

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ScreenUtilInit is used for responsive design, initializing screen utility
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Default design size for UI scaling
      minTextAdapt: true, // Allows text to adapt to smallest screen width
      splitScreenMode: true, // Enables split screen mode consideration
      builder: (_, child) {
        // Builder returns the MaterialApp, configuring the app's theme and home
        return MaterialApp(
          debugShowCheckedModeBanner: false, // Hides the debug banner
          title: 'First Method', // Title of the application
          home: child, // Sets Module13 as the initial screen
        );
      },
      child: const Module13(), // Module13 widget is passed as a child to ScreenUtilInit
    );
  }
}