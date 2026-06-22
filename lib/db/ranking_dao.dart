import 'package:sqflite/sqlite_api.dart';
import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/domain/ranking.dart';

class RankingDao {
  Future<List<Ranking>> listarRanking() async{
    List<Ranking> rankings = [];
    Database db = await DBHelper().initDB();
    String sql = '''SELECT * FROM RANKING ORDER BY id ASC''';
    var queryResult = await db.rawQuery(sql);
    for (var json in queryResult){
      Ranking ranking = Ranking.fromJson(json);
      rankings.add(ranking);}
    return rankings;
  }
}

