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
  //List <Questao> listaQuestoes = [];
  late Future<List<Questao>> futureLista;

  void initState(){
    super.initState();
    futureLista = QuestaoDao().listarQuestoes();
  }

  //carregarQuestoes() async{
    //listaQuestoes = await QuestaoDao().listarQuestoes();
    //setState(() {});
  //}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8ACE3),
      ),
      body: FutureBuilder(
          future: futureLista,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<Questao> listaQuestoes = snapshot.requireData;
              return buildListView(listaQuestoes);
            }
            return Center(child: CircularProgressIndicator());
          },
          )


    );

  }
  buildListView(List <Questao> listaQuestoes){
    return ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listaQuestoes.length,
        itemBuilder: (context, i) {
          return EstruturaQuestao(questao: listaQuestoes[i]);
        }
    );
  }
}