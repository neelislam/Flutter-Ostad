import 'dart:math';
import 'package:ostadflutter/module_9_class3.dart';
import 'package:ostadflutter/module_9_mediaQuery.dart';
import 'package:ostadflutter/module_9_todo.dart';
import 'package:ostadflutter/statefull_class.dart';

import 'Module 11/class 2/calculator_app.dart';
import 'Module 11/class 3/waterTracker.dart';
import 'Module 11/class_1/Alerts/alert.dart';
import 'Module 11/class_1/lifecycle.dart';
import 'Module 12/class 1.dart';
import 'Module 13/module13.dart'; // Import for Module13 widget
import 'login_page.dart';
import 'package:flutter/material.dart';
import 'package:ostadflutter/Flutter_Class_2.dart';

import 'Flutter_Class_1.dart';
import 'module_9_class_2.dart';
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