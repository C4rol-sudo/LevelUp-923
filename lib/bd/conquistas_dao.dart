import 'package:levelup/bd/DbHelperconquistas.dart';
import 'package:sqflite/sqflite.dart';


class ConquistasDao {
  Future<List<Map<String, dynamic>>> listarConquistas() async {
    Database db = await DbHelperconquistas().initDB();
    var listaResult = await db.rawQuery('SELECT * FROM CONQUISTAS');
    return listaResult;
  }


  Future<void> atualizarConquista(int id) async {
    Database db = await DbHelperconquistas().initDB();
    await db.rawUpdate('UPDATE CONQUISTAS SET desbloqueado = 1 WHERE id = ?', [id]);
  }
}
