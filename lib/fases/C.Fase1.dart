import 'package:flutter/material.dart';
import "package:levelup/bd/bancoDeDados.dart";
import "package:levelup/widget/estrutura_questao.dart";

class CFase1 extends StatefulWidget {
  const CFase1({super.key});

  @override
  State<CFase1> createState() => _CFase1State();
}

class _CFase1State extends State<CFase1> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        appBar: AppBar(
          title: Text('Ciências da Natureza - fase 1'),
            backgroundColor: Color(0xFF88BDED),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: BancoDeDados.questoesC.length,
          itemBuilder: (context, i){
            return EstruturaQuestao(questao: BancoDeDados.questoesC[i]);

          },
        ),

      );
  }
}