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
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text('564',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 50,
              ),),
            ),
          ),


          Row(
            children: [
              calculator_buttons(color: null, text: '7', onClick: () {  },),
              calculator_buttons(color: null, text: '8', onClick: () {  },),
              calculator_buttons(color: null, text: '9', onClick: () {  },),
              calculator_buttons(color: null, text: '/', onClick: () {  },),

            ],
          ),
          Row(
            children: [
              calculator_buttons(color: null, text: '4', onClick: () {  },),
              calculator_buttons(color: null, text: '5', onClick: () {  },),
              calculator_buttons(color: null, text: '6', onClick: () {  },),
              calculator_buttons(color: null, text: 'x', onClick: () {  },),

            ],
          ),
          Row(
            children: [
              calculator_buttons(color: null, text: '1', onClick: () {  },),
              calculator_buttons(color: null, text: '2', onClick: () {  },),
              calculator_buttons(color: null, text: '3', onClick: () {  },),
              calculator_buttons(color: null, text: '-', onClick: () {  },),

            ],
          ),
          Row(
            children: [
              calculator_buttons(color: null, text: 'C', onClick: () {  },),

              calculator_buttons(color: null, text: '0', onClick: () {  },),

              calculator_buttons(color: null, text: '=', onClick: () {  },),
              calculator_buttons(color: null, text: '+', onClick: () {  },),

            ],
          ),
        ],

      ),
    );
  }
}

