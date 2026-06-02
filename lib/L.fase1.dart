import 'package:flutter/material.dart';
import "package:levelup/bd/bancoDeDados.dart";
import "package:levelup/widget/estrutura_questao.dart";

class LFase1 extends StatefulWidget {
  LFase1({super.key});

  @override
  State<LFase1> createState() => _LFase1State();
}

class _LFase1State extends State<LFase1> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE8ACE3),
        ),
        body: ListView.builder(
          padding:EdgeInsets.all(20),
            itemCount: BancoDeDados.questoesL.length,
            itemBuilder: (context, i) {
              return EstruturaQuestao(questao: BancoDeDados.questoesL[i]);
            },
          ),
        

      );
  }

}