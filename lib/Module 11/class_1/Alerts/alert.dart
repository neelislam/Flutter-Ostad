import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  void showAlertDialogue(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('This is title'),
      content: Text('Are you sure?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('No')),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Yes'))
      ],
    )
    );
  }
  void showAlertDialogueWithIcon(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: Row(
        children: [
          Icon(Icons.warehouse,color: Colors.green,),
          SizedBox(width: 10,),
          Text('Warning!'),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: Colors.red,),
              SizedBox(width: 5,),
              Text('Hell Yeah!')
            ],
          ),
          Text('Ulala I love you my sonia Ulala! Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala Ulala')
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Okay'))
      ],
    )
    );
  }


  void showSimpleDiaogue(){
    showDialog(context: context, builder: (context)=>SimpleDialog(
      title: Text('Simple Dialogue'),
      children: [
        SimpleDialogOption(
          child: Text('Option-1'),
          onPressed: ()=>Navigator.pop(context),
        ),
        SimpleDialogOption(
          child: Text('Option-2'),

          onPressed: ()=>Navigator.pop(context),
        )
      ],
    ));
  }


  void showBottomSheetAlert(){
    showModalBottomSheet(context: context, builder: (context)=>Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Chose Option', style: TextStyle(fontSize: 18),),
          ListTile(
            title: Text('Option 1'),
            onTap:()=>Navigator.pop(context)),
          ListTile(
            title: Text('Option 1'),
              onTap:()=>Navigator.pop(context))
        ],
      ),
    ));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert'
        ),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(onPressed: (){
            showAlertDialogue();
          },
            style:  ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color of the button
                foregroundColor: Colors.red,      // Text and icon color
              padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30), // Example: Padding
              elevation: 40,),

            child: Text(
            'Alert Dialogue'
          ),

          ),
          SizedBox(height: 35,),
          ElevatedButton(onPressed: (){
            showAlertDialogueWithIcon();
          },
            style:  ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Background color of the button
              foregroundColor: Colors.yellowAccent,      // Text and icon color
              padding: EdgeInsets.symmetric(horizontal: 75, vertical: 25), // Example: Padding
              elevation: 30,),

            child: Text(
                'Alert with Icon here'
            ),
          ),
          SizedBox(height: 35,),
          ElevatedButton(onPressed: (){
            showSimpleDiaogue();
          },
            style:  ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Background color of the button
              foregroundColor: Colors.black,      // Text and icon color


              padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10), // Example: Padding
              elevation: 20,),

            child: Text(
                'Simple Dialogue'
            ),
          ),
          SizedBox(height: 35,),
          ElevatedButton(onPressed: (){
            showBottomSheetAlert();
          },
            style:  ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color of the button
              foregroundColor: Colors.black,      // Text and icon color


              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5), // Example: Padding
              elevation: 1,),

            child: Text(
                'Bottom sheet'
            ),
          ),
        ],
      ),
    ));
  }
}
