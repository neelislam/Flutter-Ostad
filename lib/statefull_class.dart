import 'package:flutter/material.dart';
import 'package:ostadflutter/widget/CardingStyle.dart';
class StateFullClass extends StatefulWidget {
  const StateFullClass({super.key});
  @override
  State<StateFullClass> createState() => _StateFullClassState();
}
class _StateFullClassState extends State<StateFullClass> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State full Class'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(),
            style: TextStyle(
              fontSize: 50,
              color: Colors.deepPurple,
            ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 120,
                    child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                  print('$counter');
                }, child: Text('+',style:
                  TextStyle(
                    fontSize: 30,
                      color: Colors.deepOrange
                  ),))),
                SizedBox(width: 20,),
                SizedBox(
                    width: 120,
                    child:
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter--;
                  });
                  print('$counter');
                }, child: Text('-',style:
                TextStyle(
                  fontSize: 30,
                  color: Colors.deepOrange,)
                  ,))),
              ],
            ),
            SizedBox(height: 5,),

            // CardingStyle(),


            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  CardingStyle(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-u3msZpTE00DUStV15BCYxAU-n51hndKoxg&s',city: 'Putin',),
                  SizedBox(height: 5,),

                  CardingStyle(image: 'https://www.insidehighered.com/sites/default/files/2024-11/donald_trump_election_2024_gettyimages-2183216502_edit.jpg',city: 'Trump',),
                  SizedBox(height: 5,),

                  CardingStyle(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwxHCzupVZsCWjxIbOg4q5NWhUE9bk00-jg&s',city: 'Hitlar',),
                  SizedBox(height: 5,),

                  CardingStyle(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRunSNdnGrIxam1kg5TzIjOJWDXtSyuWwLRg&s',city: 'Sheikh Hasina',),
                  SizedBox(height: 5,),




                ],
              ),
            )
          ],

        ),
      ) ,
    );
  }
}


