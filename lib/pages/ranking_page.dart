import 'package:flutter/material.dart';
import 'package:levelup/api/ranking_api.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  final RankingApi _rankingApi = RankingApi();
  late Future<List<AlunoDestaque>> _futureRanking;

  @override
  void initState() {
    super.initState();
    _futureRanking = _rankingApi.fetchRankingEnem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranking ENEM 2026'),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder<List<AlunoDestaque>>(
        future: _futureRanking,
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Erro ao carregar ranking: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final alunos = snapshot.data!;

            return ListView.builder(
              itemCount: alunos.length,
              itemBuilder: (context, index) {
                final aluno = alunos[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Text('#${index + 1}'),
                    ),
                    title: Text(
                      aluno.nome,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${aluno.conquista} • ${aluno.estado}'),
                    trailing: Text(
                      '${aluno.pontuacao} pts',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: Text('Nenhum aluno encontrado no ranking.'),
          );
        },
      ),
    );
  }
}
