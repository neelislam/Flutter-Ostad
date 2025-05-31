import 'package:flutter/material.dart';

// Assuming Calculator_Buttons.dart was not provided,
// I'm defining a simple CalculatorButton widget here for self-containment.
class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onClick;
  final bool isLarge; // For the '0' button spanning two columns

  const CalculatorButton({
    super.key,
    required this.text,
    this.color,
    required this.onClick,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isLarge ? 2 : 1, // '0' button takes more space
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[850], // Default color for numbers
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Rounded buttons
            ),
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            textStyle: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0'; // The value displayed on the screen
  String _input = '0';  // The current number being entered
  String _operator = ''; // The last operator pressed (+, -, *, /)
  double _num1 = 0;     // First operand
  double _num2 = 0;     // Second operand
  bool _isOperatorPressed = false; // Flag to indicate if an operator was just pressed

  void buttonPress(String value) {
    setState(() {
      if (value == 'C') {
        // Reset all variables
        _output = '0';
        _input = '0';
        _operator = '';
        _num1 = 0;
        _num2 = 0;
        _isOperatorPressed = false;
      } else if (value == '=') {
        // Perform calculation when '=' is pressed
        if (_operator.isNotEmpty && _input.isNotEmpty) {
          _num2 = double.parse(_input);
          String result;
          switch (_operator) {
            case '+':
              result = (_num1 + _num2).toString();
              break;
            case '-':
              result = (_num1 - _num2).toString();
              break;
            case '*':
              result = (_num1 * _num2).toString();
              break;
            case '/':
              result = (_num2 != 0) ? (_num1 / _num2).toString() : 'Error';
              break;
            default:
              result = _input; // Should not happen
          }

          // Format result to remove trailing .0 if it's an integer
          if (result.endsWith('.0')) {
            result = result.substring(0, result.length - 2);
          }

          _output = result;
          _input = _output; // Set input to the result for further operations
          _operator = ''; // Clear operator after calculation
          _isOperatorPressed = false;
        }
      } else if (['+', '-', '*', '/'].contains(value)) {
        // Handle operator buttons
        if (_input.isNotEmpty && _output != 'Error') {
          if (!_isOperatorPressed) {
            // If an operator wasn't just pressed, store the current input as num1
            _num1 = double.parse(_input);
          }
          _operator = value;
          _isOperatorPressed = true;
          _input = '0'; // Clear input for the next number
          _output = _num1.toString() + _operator; // Show num1 and operator
        }
      } else if (value == '.') {
        // Handle decimal point
        if (_isOperatorPressed) {
          // If operator was just pressed, start new number with "0."
          _input = '0.';
          _isOperatorPressed = false;
        } else if (!_input.contains('.')) {
          // Add decimal point only if not already present
          _input += value;
        }
        _output = _input;
      } else {
        // Handle digit buttons (0-9)
        if (_isOperatorPressed) {
          // If operator was just pressed, start a new number
          _input = value;
          _isOperatorPressed = false;
        } else if (_input == '0' || _output == 'Error') {
          // Replace leading '0' or 'Error' with the new digit
          _input = value;
        } else {
          // Append digit to current input
          _input += value;
        }
        _output = _input; // Always display the current input
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Display area for output
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Text(
                _output,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 60, // Slightly larger font for output
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis, // Prevent overflow
              ),
            ),
          ),
          const Divider(height: 1, color: Colors.grey), // Visual separator

          // Calculator buttons layout
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(color: Colors.grey[700], text: 'C', onClick: () => buttonPress('C')),
                  CalculatorButton(color: Colors.grey[700], text: '+/-', onClick: () => {}), // Placeholder for +/-
                  CalculatorButton(color: Colors.grey[700], text: '%', onClick: () => {}), // Placeholder for %
                  CalculatorButton(color: Colors.orange, text: '/', onClick: () => buttonPress('/')),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '7', onClick: () => buttonPress('7')),
                  CalculatorButton(text: '8', onClick: () => buttonPress('8')),
                  CalculatorButton(text: '9', onClick: () => buttonPress('9')),
                  CalculatorButton(color: Colors.orange, text: '*', onClick: () => buttonPress('*')),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '4', onClick: () => buttonPress('4')),
                  CalculatorButton(text: '5', onClick: () => buttonPress('5')),
                  CalculatorButton(text: '6', onClick: () => buttonPress('6')),
                  CalculatorButton(color: Colors.orange, text: '-', onClick: () => buttonPress('-')),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '1', onClick: () => buttonPress('1')),
                  CalculatorButton(text: '2', onClick: () => buttonPress('2')),
                  CalculatorButton(text: '3', onClick: () => buttonPress('3')),
                  CalculatorButton(color: Colors.orange, text: '+', onClick: () => buttonPress('+')),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '0', onClick: () => buttonPress('0'), isLarge: true), // '0' button is wider
                  CalculatorButton(text: '.', onClick: () => buttonPress('.')),
                  CalculatorButton(color: Colors.orange, text: '=', onClick: () => buttonPress('=')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}