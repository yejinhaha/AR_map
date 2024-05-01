import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:memo/loginPage/loginMainPage.dart';
import 'package:memo/config/mongodbconnector.dart';

void main() {
  final dbService = MongoDBService('host', 27017, 'dbName', 'users');
  dbService.openDb();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemoApp',
      home: TokenCheck(),
    );
  }
}