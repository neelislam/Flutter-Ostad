import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final List<String> catagories = [
    'Food',
    'Transport',
    'Enter',
    'Bills'
  ];
  double total = 0.0;



  void _showForm(BuildContext context){
    String selectedCategory = catagories.first;
    showModalBottomSheet(
        context: context,
        builder: (context){
    return Padding(

      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Title'
            ),

          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount'
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(height: 10),
          DropdownButtonFormField<String>(
            items: catagories
                .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedCategory = value!;

              });
            },
            decoration: InputDecoration(labelText: 'Select anyone'),
          ),
          SizedBox(height: 20,),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){},
                child: Text('Add expense') ),
          )
        ],
      ),
    );
    }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Expense tracker",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: ()=>_showForm(context), icon: Icon(Icons.add))
        ],
      ),
      body: SafeArea(

        child: Column(
          children: [
            
            Center(
              child: Card(
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text('Total: ৳$total',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            )
          ],
        ),
      ),

      );

  }
}
