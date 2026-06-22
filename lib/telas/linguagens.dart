import 'package:flutter/material.dart';
import 'package:levelup/bd/questao_dao.dart';
import 'package:levelup/domain/questao.dart';
import 'package:levelup/widget/estrutura_questao.dart';

class LFase1 extends StatefulWidget {
  const LFase1({super.key});

  @override
  State<LFase1> createState() => _LFase1State();
}

class _LFase1State extends State<LFase1> {

  late Future<List<Questao>> _futureQuestoes;

  @override
  void initState() {
    super.initState();
    _futureQuestoes = QuestaoDao().listarQuestoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8ACE3),
      ),
      body: FutureBuilder<List<Questao>>(
        future: _futureQuestoes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFE8ACE3)),
              ),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar questões: ${snapshot.error}'),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('Nenhuma questão encontrada.'),
            );
          }

          final listaQuestoes = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: listaQuestoes.length,
            itemBuilder: (context, i) {
              return EstruturaQuestao(questao: listaQuestoes[i]);
            },
          );
        },
      ),
    );
  }
}