import 'package:flutter/material.dart';


class ListV extends StatelessWidget {
  const ListV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,

        title: Text('List View'),
      ),
      // body: ListView(
      //  children: [
      //    Container(
      //      height: 200,
      //        width: 50,
      //        color: Colors.red,
      //    ),
      //    Container(
      //      height: 20,
      //      width: 50,
      //      color: Colors.orange,
      //    ),
      //    Container(
      //      height: 200,
      //      width: 50,
      //      color: Colors.grey,
      //    ),
      //    Container(
      //      height: 100,
      //      width: 50,
      //      color: Colors.yellow,
      //    ),
      //    Container(
      //      height: 200,
      //      width: 50,
      //      color: Colors.blue,
      //    ),
      //    Container(
      //      height: 100,
      //      width: 50,
      //      color: Colors.green,
      //    ),
      //  ],
      // ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index) {
          return Card(
            child: ListTile(
              onTap: (){
                print('Tapped $index');
              },
              leading: Icon(Icons.monitor_heart),
              trailing: Icon(Icons.heart_broken_rounded),
              subtitle: Text('Horny,'),
              title: Text('Life is $index'),

            ),
          );
        },
          ),
    );
        }
  }

