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
import 'login_page.dart';
import 'package:flutter/material.dart';
import 'package:ostadflutter/Flutter_Class_2.dart';

import 'Flutter_Class_1.dart';
import 'module_9_class_2.dart';
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       title: 'Hell Yeah',
       home: ExpenseTracker(), // The main screen of the application
       debugShowCheckedModeBanner: false, // Hides the "DEBUG" banner in debug mode
     );
   }
 }
