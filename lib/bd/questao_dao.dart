import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/questao.dart';
import 'package:sqflite/sqflite.dart';

class QuestaoDao{

  Future<List<Questao>> listarQuestoes() async{

    Database db = await DBHelper().initDB();
    var questoes = await db.rawQuery('SELECT * FROM QUESTAO;');

    List<Questao> listaQuestoes = [];

    for(var json in questoes){
      Questao questao = Questao.fromJson(json);
      listaQuestoes.add(questao);
    }
    return listaQuestoes;
  }
}
