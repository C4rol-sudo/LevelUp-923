import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/user.dart';

class UserDao {
  Future<bool> login(String username, String password) async {
    Database db = await DBHelper().initDB();
    String sql = '''
       SELECT *
       FROM USER
       WHERE username = ? AND password = ?;
   ''';


    var result = await db.rawQuery(sql, [username, password]);
    return result.isNotEmpty;
  }


  save(User usuario) async {
    Database db = await DBHelper().initDB();
    db.insert('USER', usuario.toJson());
  }
}
