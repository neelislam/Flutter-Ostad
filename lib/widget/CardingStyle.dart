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
        padding: EdgeInsets.all(10),
        height: 180,

        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius:  BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(4, 4),
                blurRadius: 10,
              )
            ]
        ),
        alignment: Alignment.center,
        width: 200,

        child: Column(
          children: [
            Stack(children: [
              Image.network(image),
              Positioned(
                bottom: 1,
                  left: 1,
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
                  left: 145,
                  child: Container(
                    padding: EdgeInsets.all(5),
                   color: Colors.amberAccent,
                    child: Icon(Icons.location_on),

                  )
              )
            ],),

            Text(city,
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepOrangeAccent,
              ),),
          ],
        )
    );
  }
}