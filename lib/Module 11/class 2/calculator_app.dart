import 'package:flutter/material.dart';

import '../../widget/Calculator_Buttons.dart';
class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator',
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,

      ),
      body: Column(


        children: [
          Divider(height: 20,),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(24),
            child: Text('564',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 50,
            ),),
          ),


          Row(
            children: [
              calculator_buttons(color: null, text: '', onClick: () {  },),

            ],
          ),
        ],

      ),
    );
  }
}

