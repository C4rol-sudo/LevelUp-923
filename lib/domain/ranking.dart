class Ranking {
  late String name;
  late String level;

  Ranking({
    required this.name,
    required this.level
  });

  Ranking.fromJson(Map<String, dynamic> json){
    name = json['name'];
    level = json['level'];
  }
}
