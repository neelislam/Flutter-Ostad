import 'package:flutter/material.dart';

import 'Flutter_Class_1.dart';

class Navi extends StatelessWidget {
  final String name;
  const Navi({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.grey,

      ),
body: SingleChildScrollView(
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(name,style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
             },
                 child: Text('Home')),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text('Back')),
            ],
          ),
        )
      ],
    ),
  ),
),
    );
  }
}
