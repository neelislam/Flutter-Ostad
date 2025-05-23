
import 'package:flutter/material.dart';
import 'package:ostadflutter/app.dart'; // Import your MyApp widget
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
  DevicePreview(
    enabled: false,
    builder: (context)=>MyApp(),
  )
  );
}