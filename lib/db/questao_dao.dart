import 'package:levelup/db/db_helper.dart';
import 'package:levelup/domain/questao.dart';
import 'package:sqflite/sqflite.dart';

class QuestaoDao{

  Future<void> listarQuestoes() async{

    Database db = await DBHelper().initDB();
    var questoes = await db.rawQuery('SELECT * FROM QUESTAO;');

    for(var json in questoes){
      print(json);
    }

  }

}
