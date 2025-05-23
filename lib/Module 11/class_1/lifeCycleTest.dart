import 'package:flutter/material.dart';

class Lifecycletest extends StatefulWidget {
  const Lifecycletest({super.key});

  @override
  State<Lifecycletest> createState() => _LifecycletestState();
}

class _LifecycletestState extends State<Lifecycletest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Init state from page 2');
  }

  @override
  void dispose() {
    print('Dispose from page 2');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
