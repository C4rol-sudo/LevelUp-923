import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:levelup/H.fase1.dart';
import 'package:levelup/H.fase2.dart';
import 'package:levelup/H.fase3.dart';
import 'package:levelup/H.fase4.dart';
import 'package:levelup/H.fase5.dart';
import 'package:levelup/H.fase6.dart';
import 'package:levelup/H.fase7.dart';
import 'package:levelup/H.fase8.dart';

class TelaHumanas extends StatefulWidget {
  const TelaHumanas({super.key});

  @override
  State<TelaHumanas> createState() => _TelaHumanasState();
}

class _TelaHumanasState extends State<TelaHumanas> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        appBar: AppBar(
            backgroundColor: Color(0xFFA7EACE)
        ),
          backgroundColor: Color(0xFFD0FFEC),
          body: Stack(
              children:[
                Positioned.fill(child: _buildFundoDecorativo()),
                SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
              child: Column(
              children: [
                const SizedBox(height: 30),
                Center(
                    child: Text(
                        'Humanas',
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
                      GestureDetector(
                        onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HFase1()
                            )
                        );
                        },
                        child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "1",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase2()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "2",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase3()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "3",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase4()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "4",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase5()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "5",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase6()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "6",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 55),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase7()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "7",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
                      )
                    ]
                ),

                Row(
                    children: [
                      const SizedBox(width: 210),
                      GestureDetector(
                          onTap: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HFase8()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFFA7EACE),
                        elevation: 4,
                        child: Text(
                            "8",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF7BC8A8)
                            )
                        ),
                      )
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
    Icons.psychology,
    Icons.lightbulb_outline,
    Icons.maps_home_work_rounded,
    Icons.account_balance,
    Icons.map,
    Icons.public,
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
            color: const Color(0xFF05D16F),
          );
        }),
      ),
    ),
  );
}