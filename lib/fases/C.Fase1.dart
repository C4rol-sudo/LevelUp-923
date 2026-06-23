import 'package:flutter/material.dart';
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

      );
  }
}