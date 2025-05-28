import 'package:flutter/material.dart';
class addWaterButton extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;
  addWaterButton({
    super.key, required this.amount, required this.onClick, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton.icon(onPressed: onClick,
          label: Text('+${amount} ml',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),),
          icon: Icon(icon ?? Icons.water_drop),


        ),
      ),
    );
  }
}
