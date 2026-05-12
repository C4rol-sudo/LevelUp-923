import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:levelup/L.fase1.dart';
import 'package:levelup/L.fase2.dart';
import 'package:levelup/L.fase3.dart';
import 'package:levelup/L.fase4.dart';
import 'package:levelup/L.fase5.dart';
import 'package:levelup/L.fase6.dart';
import 'package:levelup/L.fase7.dart';
import 'package:levelup/L.fase8.dart';

class TelaLinguagens extends StatefulWidget {
  const TelaLinguagens({super.key});

  @override
  State<TelaLinguagens> createState() => _TelaLinguagensState();
}

class _TelaLinguagensState extends State<TelaLinguagens> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
          appBar: AppBar(
              backgroundColor: Color(0xFFE8ACE3)
          ),
          backgroundColor: Color(0xFFFFD8FC),
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
                            'Linguagens',
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
                                      builder: (context) => LFase1()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "1",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                    builder: (context) => LFase2()
                                )
                            );
                              },
                            child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "2",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase3()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "3",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase4()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "4",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase5()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "5",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase6()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "6",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase7()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "7",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
                                      builder: (context) => LFase8()
                                  )
                              );
                              },
                          child: HexagonWidget.flat(
                            width: 120,
                            color: Color(0xFFF4B4EE),
                            elevation: 4,
                            child: Text(
                                "8",
                                style: GoogleFonts.irishGrover(
                                    fontSize: 35,
                                    color: Color(0xFFDC8FD4)
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
    Icons.menu_book,
    Icons.palette,
    Icons.language,
    Icons.history_edu,
    Icons.directions_run,
    Icons.translate,
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
            color: const Color(0xFFEA5CA8),
          );
        }),
      ),
    ),
  );
}