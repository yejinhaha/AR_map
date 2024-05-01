import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:memo/config/dbInfo.dart';

class MongoDBService {
  final String _host; // MongoDB server host address
  final int _port; // MongoDB server port
  final String _dbName; // Database name
  final String _collectionName; // Collection (table) name

  MongoDBService(this._host, this._port, this._dbName, this._collectionName);

  String get collectionName => _collectionName;

  Future<Db> openDb() async {
    final db = Db('mongodb://$_host:$_port/$_dbName');
    await db.open();
    return db;
  }
  Future<void> closeDb(Db db) async {
    await db.close();
    log('Database disconnected.');
  }


// Future<List<String>> fetchWords() async {
  //   log('Connecting to mongodb server...');
  //
  //   //MongodDB 연결
  //   final db = await _openDb();
  //   final collection = db.collection(_collectionName);
  //   final words = await collection.find().toList();
  //   await db.close();
  //   return words.map((word) => word['word'] as String).toList();
  // }
}