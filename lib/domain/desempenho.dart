class Desempenho {
  final int? id;
  final String materia;
  final int acertos;
  final int total;


  Desempenho({
    this.id,
    required this.materia,
    required this.acertos,
    required this.total
  });


  factory Desempenho.fromJson(Map<String, dynamic> json){
    return Desempenho(
      id: json['id'],
      materia: json['materia'],
      acertos: json['acertos'],
      total: json['total'],


    );
  }
}
