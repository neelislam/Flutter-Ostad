import 'package:flutter/material.dart';


class CardingStyle extends StatelessWidget {
  final String image,city;
  const CardingStyle({
    super.key, required this.image, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: 50,

        // decoration: BoxDecoration(
        //     color: Colors.grey,
        //     borderRadius:  BorderRadius.circular(1),
        //     boxShadow:[
        //       BoxShadow(
        //         color: Colors.grey,
        //         offset: Offset(1, 1),
        //         blurRadius: 2,
        //       )
        //     ]
        // ),
        //alignment: Alignment.center,
        width: 10,

        child: Column(
          children: [
            Stack(children: [
              Image.network(image),
              Positioned(
                bottom: 1,
                  left: 4,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.amberAccent,
                    child: Text(
                      "4.5",
                    ),
                  )
              ),
              Positioned(
                  bottom: 1,
                  right: 3,
                  child: Container(
                    padding: EdgeInsets.all(5),
                   color: Colors.amberAccent,
                    child: Icon(Icons.location_on),

                  )
              )
            ],),

            Text(city,
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),),
          ],
        )
    );
  }
}