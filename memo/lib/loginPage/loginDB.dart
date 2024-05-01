import 'package:memo/config/mongodbconnector.dart';
import 'package:mongo_dart/mongo_dart.dart';


Future<void> insertMember(String userName, String password) async {
  final dbService = MongoDBService('host', 27017, 'dbName', 'users');
  final db = await dbService.openDb();

  try {
    final collection = db.collection(dbService.collectionName);
    await collection.insertOne({
      "userName": userName,
      "password": password
    });
  } catch (e) {
    print('Error: $e');
  } finally {
    await db.close();
  }
}