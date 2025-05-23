import 'package:flutter/material.dart';

class ModuleMedia extends StatefulWidget {
  const ModuleMedia({super.key});

  @override
  State<ModuleMedia> createState() => _ModuleMediaState();
}

class _ModuleMediaState extends State<ModuleMedia> {

  @override
  Widget build(BuildContext context) {
    // Get the full screen size
    Size screenSize = MediaQuery.of(context).size;
    // Get the screen width specifically
    double screenWidth = screenSize.width;
    // Determine font size based on screen width for responsiveness
    // If screen width is greater than 600 logical pixels, use 18, otherwise use 12
    double fontSize = screenWidth > 600 ? 18 : 12; // Adjusted font sizes for better visibility
    // Get the device's pixel ratio
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;

    return MaterialApp( // MaterialApp provides necessary Material Design widgets and routing
      home: Scaffold( // Scaffold provides the basic visual structure of the app
        body: Column( // Column arranges its children vertically
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically in the column
          children: [
            Center( // Centers the Container horizontally
              child: Container(
                width: screenSize.width * 0.5, // Container width is 50% of screen width
                height: screenSize.height * 0.1, // Container height is 10% of screen height
                color: Colors.red, // Background color of the container
                child: Center(
                  child: Text(
                    'Amar Nunu', // Text content
                    style: TextStyle(
                      fontSize: fontSize, // Font size based on screen width
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacer for vertical separation
            Text(
              'Amar Bal', // Another text widget
              style: TextStyle(
                fontSize: fontSize, // Font size based on screen width
                color: Colors.black, // Text color
              ),
            ),
            const SizedBox(height: 10), // Spacer
            Text(
              'Pixel Ratio: $pixelRatio', // Displaying the device pixel ratio
              style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20), // Spacer

            // The corrected Wrap widget for displaying chips
            // Wrap lays out children in a horizontal or vertical run,
            // and wraps to the next run when it runs out of space.
            Wrap(
              spacing: 8.0, // Horizontal space between chips
              runSpacing: 4.0, // Vertical space between runs of chips
              children: List.generate(20,(index){ // Generates a list of 10 Chip widgets
                return Container(
                  color: Colors.red,// Background color for chips
                  height: 50,
                  width: 50,// Text color for chip labels
                  padding: const EdgeInsets.all(8.0), // Padding inside the chip
                );
              }),
            ),

            // LayoutBuilder(builder: (context,constraints){
            //   if(constraints.maxWidth>600){
            //     return GridView.count(crossAxisCount: 3);
            //
            //   }else{
            //   return GridView.count(crossAxisCount: 1);
            //   }
            // })

          ],
        ),
      ),
    );
  }
}
