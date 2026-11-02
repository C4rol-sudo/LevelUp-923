import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levelup/domain/universidade.dart';
import 'package:levelup/bd/universidade_dao.dart';
import 'package:levelup/widget/estrutura_botao.dart';

class TelaUniversidades extends StatefulWidget {
  const TelaUniversidades({super.key});

  @override
  State<TelaUniversidades> createState() => _TelaUniversidadesState();
}

class _TelaUniversidadesState extends State<TelaUniversidades> {
  List<Universidade> listaUniversidades = [];
  bool carregando = true;

  @override
  void initState() {
    super.initState();
    carregarUniversidades();
  }

  void carregarUniversidades() async {
    final universidades = await UniversidadeDao().listarUniversidades();
    setState(() {
      listaUniversidades = universidades;
      carregando = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBDE0FE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Center(
              child: Text(
                "Universidades Públicas",
                style: GoogleFonts.chewy(
                  color: Colors.black,
                  fontSize: 38,
                  shadows: const [
                    Shadow(
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            carregando
                ? const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
                : Expanded(
              child: ListView.builder(
                itemCount: listaUniversidades.length,
                itemBuilder: (context, i) {
                  return EstruturaBotao(universidade: listaUniversidades[i]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
