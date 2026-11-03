import 'package:dio/dio.dart';

class AlunoDestaque {
  final String nome;
  final int pontuacao;
  final String estado;
  final String conquista;

  AlunoDestaque({
    required this.nome,
    required this.pontuacao,
    required this.estado,
    required this.conquista,
  });

  factory AlunoDestaque.fromJson(Map<String, dynamic> json) {
    return AlunoDestaque(
      nome: json['nome'] ?? 'Estudante',
      pontuacao: json['pontuacao'] ?? 0,
      estado: json['estado'] ?? 'BR',
      conquista: json['conquista'] ?? 'Nota 1000',
    );
  }
}

class RankingApi {
  final dio = Dio();

  Future<List<AlunoDestaque>> fetchRankingEnem() async {
    final response = await dio.get(
      'https://raw.githubusercontent.com/mocki-codes/mock-api/main/enem_ranking.json',
    );

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data.map((json) => AlunoDestaque.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar o ranking do ENEM');
    }
  }
}
