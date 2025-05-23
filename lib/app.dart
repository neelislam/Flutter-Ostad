import 'dart:math';
import 'package:ostadflutter/module_9_mediaQuery.dart';
import 'package:ostadflutter/module_9_todo.dart';
import 'package:ostadflutter/statefull_class.dart';

import 'login_page.dart';
import 'package:flutter/material.dart';
import 'package:ostadflutter/Flutter_Class_2.dart';

import 'Flutter_Class_1.dart';
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       title: 'Hell Yeah', // Title for the app in the task switcher
       home: ModuleNineClassTwo(), // The main screen of the application
       debugShowCheckedModeBanner: false, // Hides the "DEBUG" banner in debug mode
     );
   }
 }
