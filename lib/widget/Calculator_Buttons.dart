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
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),),
              backgroundColor: color?? Colors.grey[800],
            ),

            onPressed: (){},
            child: Text(text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
        ),
      ),
    );
  }
}
