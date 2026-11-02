import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/universidade.dart';
import 'package:sqflite/sqflite.dart';

class UniversidadeDao{
  Future<List<Universidade>> listarUniversidades() async{

    Database db = await DBHelper().initDB();
    var universidades = await db.rawQuery("SELECT * FROM UNIVERSIDADE;");

    List<Universidade> listaUniversidades = [];

    for (var json in universidades){
      Universidade universidade = Universidade.fromjson(json);
      listaUniversidades.add(universidade);
    }
    return listaUniversidades;

  }
}