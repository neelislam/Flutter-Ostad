import 'package:flutter/material.dart';

import '../../widget/add_water_button.dart';
class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {

  int currentInTake = 0;
  final int goal = 2000;

  void waterAdd(int amount){
    setState(() {
      currentInTake = (currentInTake+amount).clamp(0, goal);
    });
  }

  void resetWater(){
    setState(() {
      currentInTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Water Tracker App',
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),),
      ),

      body: Center(
        child: Column(

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
                  Text('$currentInTake ml',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,

                  ),),
                ],
              ),
            ),

            //progress indicator
            SizedBox(height: 50,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    //strokeWidth: 25,
                    value: progress,
                  ),
                ),
                Text('${(progress*100).toInt()}%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    strokeWidth: 15,
                    value: progress,
                  ),
                ),
                Text('${(progress*100).toInt()}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),


            SizedBox(height: 30,),


            Wrap(
              children: [
                addWaterButton(
                  amount: 200,
                  icon: Icons.local_drink,
                  onClick: () =>waterAdd(200),),

                addWaterButton(
                  amount: 500,
                  icon: Icons.local_drink,
                  onClick: () =>waterAdd(500),),

                addWaterButton(amount: 1000,
                  onClick: () =>waterAdd(1000),),
              ],
            ),


            SizedBox(height: 10,),


            SizedBox(
              width: double.infinity,

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),


                    onPressed: ()
                      =>resetWater()
                    ,
                    child: Text('Reset',
                    style: TextStyle(
                      fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    )
                ),
              ),
            )




          ],
        ),
      ),
    );
  }
}
