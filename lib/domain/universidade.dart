class Universidade{

  late String nome;
  late String estado;
  late String cidade;
  late String cep;

  Universidade.fromjson(Map<String, dynamic>json ){
    nome = json['nome'];
    estado = json['estado'];
    cidade = json['cidade'];
    cep = json['cep'];
  }

}