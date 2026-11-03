import 'package:dio/dio.dart';

class FakeApi {
  final dio = Dio();

  Future<List<dynamic>> fetchAlunosFake() async {
    final response = await dio.get('http://10.0.2.2:3000/alunos');

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Erro ao carregar dados da API Fake');
    }
  }
}
