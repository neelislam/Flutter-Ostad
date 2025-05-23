import 'package:flutter/material.dart';
import 'package:ostadflutter/widget/CardingStyle.dart';

class Module9Class3 extends StatefulWidget {
  const Module9Class3({super.key});

  @override
  State<Module9Class3> createState() => _Module9Class3State();
}

class _Module9Class3State extends State<Module9Class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('This is extra widget'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Center(child: Text('Magi',
            //   style: TextStyle(
            //     fontSize: 50,
            //
            //   ),
            // )
            // ),
            // Center(child: Text('Star',
            //   style: TextStyle(
            //     fontSize: 50,
            //
            //   ),
            // )
            // ),
            // Center(child: Text('Dalal',
            //   style: TextStyle(
            //     fontSize: 50,
            //
            //   ),
            // )
            // ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // To make the column only take up as much space as its children
                children: [
                  Icon(Icons.home, size: 100,),
                  SizedBox(height: 10),
                  Text('Home', style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),

            CardingStyle(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwxHCzupVZsCWjxIbOg4q5NWhUE9bk00-jg&s',
              city: 'Hitler',),

            Center(child: Icon(Icons.settings, size: 100,)),


          ],
        ),
        drawer: Drawer(
      child: ListView(
        children: [

          DrawerHeader(child: Column(

            children: [

              CircleAvatar(
                radius:35,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/96190085?v=4'),


              ),
              SizedBox(height: 19,),
              Text('Razi Rahman',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('razipazi@gmail.com',
                style: TextStyle(
                  fontSize: 12,

                ),
              )
            ],
          )
          ),
          Divider(
            thickness: 5,
              color: Colors.red,
          ),
          ListTile(
            title: Text('Doctors'),
            onTap: (){},
          ),
          Divider(
            thickness: 5,
            color: Colors.blueAccent,
          ),
          ListTile(
            title: Text('Ambulance'),
            onTap: (){},
          ),
          Divider(
            thickness: 5,
            color: Colors.blue,
          ),
          ListTile(
            title: Text('Medicine'),
            onTap: (){},
          )
        ],
      ),

        ),
      ),
    );
  }
}
