import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/questao.dart';
import 'package:sqflite/sqflite.dart';

class QuestaoDao{

  Future<List<Questao>> listarQuestoes() async {
    // Acessando o Banco de Dados
    Database db = await DBHelper().initDB();

    // Executando uma Consulta SQL
    var listaResult = await db.rawQuery('SELECT * FROM QUESTAO;');

    // Percorrer a lista de elementos
    List<Questao> listaQuestoes = [];
    for (var json in listaResult) {
      // Criar a Propriedade usando NamedConstructor
      Questao questao = Questao.fromJson(json);

      // Add Propriedade na Lista
      listaQuestoes.add(questao);

      // Criar a Propriedade Manualmente
      // Propriedade(
      //   urlImage: json['urlImagem'],
      //   local: json['local'],
      //   dates: json['dates'],
      //   host: json['host'],
      //   total: '\$${json['total']} total',
      // )
    }

    return listaQuestoes;
  }

}