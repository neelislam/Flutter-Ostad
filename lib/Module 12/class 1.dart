import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'expense_model.dart';

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

  final List<Expense> _expense= [];
  double total = 0.0;



  void _showForm(BuildContext context){
    String selectedCategory = catagories.first;
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime expenseDateTime = DateTime.now();

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
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title'
            ),

          ),
          SizedBox(height: 10,),
          TextField(
            controller: amountController,
          keyboardType : TextInputType.number,
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
            child: ElevatedButton(onPressed: (){


              if(titleController.text.isNotEmpty || double.tryParse(amountController.text) !=null){
                _addExpense(titleController.text,
                    double.parse(amountController.text),
                    expenseDateTime,selectedCategory);
                  Navigator.pop(context);
              }
              else{

              }

            },
                child: Text('Add expense') ),
          )
        ],
      ),
    );
    }
    );
  }

void _addExpense(String title, double amount, DateTime date, String category){
    setState(() {
      _expense.add(Expense(title: title, amount: amount, date: date, category: category));
      total +=amount;

    });
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
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _expense.length,
                  itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blueAccent,
                      child: Text(_expense[index].category),

                    ),
                    title: Text(_expense[index].title),
                    subtitle: Text(
                        DateFormat.yMMMd().format(_expense[index].date)
                    ),

                  ),
                );
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=> _showForm(_expense as BuildContext),
      child: Icon(Icons.add)),

      );

  }
}
