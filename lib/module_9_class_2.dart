import 'package:flutter/material.dart';

class ModuleNineClassTwo extends StatefulWidget {
  const ModuleNineClassTwo({super.key});

  @override
  State<ModuleNineClassTwo> createState() => _ModuleNineClassTwoState();
}

class _ModuleNineClassTwoState extends State<ModuleNineClassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 9 Class 2'),

      ),



      body: Column(
        children: [
          AspectRatio(
        aspectRatio: 16/9,
      child: Container(
        color: Colors.orange,
      ),

    ),
        ],
    )
  }
}
