import 'package:flutter/material.dart';

class calculator_buttons extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;
  calculator_buttons({
    super.key,
    required this.color,
    required this.text,
    required this.onClick,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),),
          backgroundColor: Colors.white60,
        ),

        onPressed: (){},
        child: Text('1',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        )
    );
  }
}
