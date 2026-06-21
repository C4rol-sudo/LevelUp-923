class Questao{

  late int numero_questao;
  late String texto;
  late String enunciado;
  late String a1;
  late String a2;
  late String a3;
  late String a4;

  Questao({
    required this.numero_questao,
    required this.texto,
    required this.enunciado,
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
  });

  Questao.fromJson(Map<String, dynamic> json) {
    numero_questao = json['numero_questao'].toInt();
    texto = json['texto'];
    enunciado = json['enunciado'];
    a1 = json['a1'];
    a2 = json['a2'];
    a3 = json['a3'];
    a4 = json['a4'];
  }

}
