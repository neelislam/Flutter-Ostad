import 'package:flutter/material.dart';
class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Water Tracker', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
      ),

      body: Column(

        children: [

          SizedBox(height: 30,),
          Container(

            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 20,
                )
              ]
            ),
            child: Column(
              children: [
                Text("Today's InTank",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
                SizedBox(height: 10,),
                Text('2000ml',
                style: TextStyle(
                  fontSize: 28,

                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
