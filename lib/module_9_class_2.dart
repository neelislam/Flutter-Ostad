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
        title: const Text('Module 9 Class 2'), // Added const for performance
      ),
      body: SingleChildScrollView( // SingleChildScrollView can only have one child
        child: Column( // This Column now contains all the content
          children: [

            FractionallySizedBox(
              widthFactor: 0.8, //parent sizer er 80% nibe
              child: ElevatedButton(onPressed: (){},
                  child: Text('Submit', style: TextStyle(
                    color: Colors.red,
                  ),)),
            ),





            // First Row with Flexible containers
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),

            // Second Row with ElevatedButtons
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Person 1 pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Example color
                    foregroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Person 1'),
                ),
                Expanded( // Expanded makes this button take up remaining space
                  child: ElevatedButton(
                    onPressed: () {
                      print('Person 2 pressed!');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Example color
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Person 2'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Person 3 pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Example color
                    foregroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Person 3'),
                ),
              ],
            ),

            // AspectRatio containers
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.orange,
                child: const Center(child: Text('Aspect Ratio 16:9', style: TextStyle(color: Colors.white))),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('Aspect Ratio 16:9', style: TextStyle(color: Colors.white))),
              ),
            ),

            AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                color: Colors.red,
                child: const Center(child: Text('Aspect Ratio 4:3', style: TextStyle(color: Colors.white))),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Aspect Ratio 16:10', style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
