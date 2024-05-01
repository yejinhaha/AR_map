import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Flexible(child: Container(color: Colors.blue), flex: 3 ),
            Flexible(child: Container(color: Colors.green), flex: 7),
            Flexible(child: Container(color: Colors.red), flex: 11),
          ],
        ),
      ),
    );
  }
}
