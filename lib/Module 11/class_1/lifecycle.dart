import 'package:flutter/material.dart';

import 'lifeCycleTest.dart';

class Module_11 extends StatefulWidget {
  const Module_11({super.key});

  @override
  State<Module_11> createState() => _Module_11State();
}

class _Module_11State extends State<Module_11> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('From Init state');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void dispose() {
    print('Dispose Call');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (context)=>Lifecycletest()));
        }, child: Text('Press me baby')),
      ),
    );
  }
}
