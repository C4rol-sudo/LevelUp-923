import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/desempenho.dart';
import 'package:sqflite/sqflite.dart';


class DesempenhoDao {
  Future<List<Desempenho>>listarDesempenho()async{
    Database db = await DBHelper().initDB();
    var listaresult = await db.rawQuery('SELECT*FROM DESEMPENHO');


    List<Desempenho> listaDesempenho = [];


    for (var json in listaresult){
      Desempenho desempenho = Desempenho.fromJson(json);
      listaDesempenho.add(desempenho);
    }
    return listaDesempenho;




  }
}
