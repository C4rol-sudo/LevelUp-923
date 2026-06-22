import 'package:flutter/material.dart';
import 'package:levelup/db/questao_dao.dart';
import 'package:levelup/domain/questao.dart';
import 'package:levelup/widget/estrutura_questao.dart';
import 'package:google_fonts/google_fonts.dart';

class LFase1 extends StatefulWidget {
  const LFase1({super.key});

  @override
  State<LFase1> createState() => _LFase1State();
}

class _LFase1State extends State<LFase1> {

  @override
  Widget build(BuildContext context) {
    
    QuestaoDao().listarQuestoes();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Linguagens', style: GoogleFonts.chewy(fontSize: 26),),
        backgroundColor: const Color(0xFFE8ACE3),
      ),
    );

  }
}