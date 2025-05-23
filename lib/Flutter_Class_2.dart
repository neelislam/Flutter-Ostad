import 'package:flutter/material.dart';

class FlutterClass2 extends StatelessWidget {
  const FlutterClass2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      //backgroundColor: Colors.grey[600],
      //backgroundColor: Colors.grey.withOpacity(0.9),
       backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
      title: Text('Class 2'),
      centerTitle: true,
        backgroundColor: Colors.cyan
      ),
      body: Center(
        child: Column(
        children: [
           ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
               onPressed: (){
             print('Button Pressed');
           },
               child: Text('Button') ) ,
          SizedBox(
              height: 50,
    // width: double.infinity,
    width: 300,
    child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
               onPressed: (){
             print('Button Pressed');
           },
               child: Text('Button') )),


          OutlinedButton(onPressed: (){}, child: Text('Outline Button') ),

GestureDetector(
  onTap: (){
    print('GestureDetector Ontap');
  },
          child: Text('This is text')),
          SizedBox(height: 10,
          ),


          //text field
          //Login page
          SizedBox(height: 25,),
          Padding(padding: const EdgeInsets.only(left: 8.0, right:8.0),
          child:
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            //obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter your Phone number',
              labelText: 'Phone Number',
              prefixIcon: Icon(Icons.phone),
              suffixIcon: Icon(Icons.check),
              labelStyle: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              border: OutlineInputBorder()
            ),
          ),
          ),

          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            if(phoneController.text.isEmpty){
              print('Please provide phone number!');
            } else if(phoneController.text.length<11){
              print('Provide a valid phone number');
            } else{
              print('Your number is ${phoneController.text}');

            }
            print(phoneController.text);
          }, child: Text('Submit')),
    ElevatedButton(onPressed: (){
      phoneController.clear();
    }, child: Text('Clear')),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 15),
            width: 200,
            height: 200,

            decoration: BoxDecoration(
              color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                border: Border.all(
                width: 2,
                  color: Colors.redAccent
            ),
                boxShadow:[
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4, 14),
                    blurRadius: 10,
                  )
                ]

            ),
            child: Center(
              child: Column(
                children: [
                  Text(
              'This is container',

              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
                  Text(
                    'This is container',

                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'This is container',

                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
              ]),
          ),
          )


        ],
      ),
      ),

      floatingActionButton: FloatingActionButton(onPressed:(){
      print('Floating action button pressed');
      },
         child: Icon(Icons.read_more),
        // child: Text('ADD'),
        backgroundColor: Colors.cyan,
      ),
    );

  }
}
