import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';

class TelaMatematica extends StatefulWidget {
  const TelaMatematica({super.key});

  @override
  State<TelaMatematica> createState() => _TelaMatematicaState();
}

class _TelaMatematicaState extends State<TelaMatematica> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        appBar: AppBar(
            backgroundColor: Color(0xFFF1BD8B)
        ),
          backgroundColor: Color(0xFFFFD6AE),
          body: Stack(
              children:[
                Positioned.fill(child: _buildFundoDecorativo()),
                SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
              child:Column(
              children: [
                const SizedBox(height: 30),
                Center(
                    child: Text(
                        'Matemática',
                        style: GoogleFonts.chewy(
                            fontSize: 60,
                            color: Colors.black
                        )
                    )
                ),
                const SizedBox(height: 30),
                Row(
                    children: [
                      const SizedBox(width: 55),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "1",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "2",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "3",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "4",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "5",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "6",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "7",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFF1BD8B),
                        elevation: 4,
                        child: Text(
                            "8",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFFD39C68)
                            )
                        ),
                      )
                    ]
                ),
                const SizedBox(height: 50)
              ]
           )
          )
          ]
          )
      );
  }
}

Widget _buildFundoDecorativo() {
  List<IconData> icones = [
    Icons.straighten,
    Icons.area_chart_sharp,
    Icons.pie_chart,
    Icons.percent,
    Icons.calculate,
    Icons.change_history,
  ];

  const int iconesPorLinha = 6;
  const int totalDeIcones = 120;

  return Positioned.fill(
    child: Opacity(
      opacity: 0.1,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 35,
        runSpacing: 35,
        children: List.generate(totalDeIcones, (index) {

          int linha = index ~/ iconesPorLinha;
          int posicaoNaLinha = index % iconesPorLinha;
          IconData iconeEscolhido;

          if (linha % 2 == 0) {
            iconeEscolhido = icones[posicaoNaLinha % icones.length];
          } else {

            int indiceInvertido = (icones.length - 1) - (posicaoNaLinha % icones.length);
            iconeEscolhido = icones[indiceInvertido];
          }

          return Icon(
            iconeEscolhido,
            size: 28,
            color: const Color(0xFFEA7708),
          );
        }),
      ),
    ),
  );
}