import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import'package:levelup/C.Fase1.dart';
import'package:levelup/C.Fase2.dart';
import'package:levelup/C.Fase3.dart';
import'package:levelup/C.Fase4.dart';
import'package:levelup/C.Fase5.dart';
import'package:levelup/C.Fase6.dart';
import'package:levelup/C.Fase7.dart';
import'package:levelup/C.Fase8.dart';

class TelaCiencias extends StatefulWidget {
  const TelaCiencias({super.key});

  @override
  State<TelaCiencias> createState() => _TelaCienciasState();
}

class _TelaCienciasState extends State<TelaCiencias> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        appBar: AppBar(
            backgroundColor: Color(0xFF88BDED)
        ),
        backgroundColor: Color(0xFFBDE0FE),
          body:Stack(
            children:[
              Positioned.fill(child: _buildFundoDecorativo()),
              SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Center(
                    child: Text(
                        'Ciências',
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
                                  builder: (context) => CFase1()
                              )
                          );
                          },
                      child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "1",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase2()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "2",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase3()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "3",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase4()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "4",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase5()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "5",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase6()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "6",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase7()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "7",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
                                  builder: (context) => CFase8()
                              )
                          );
                          },
                          child: HexagonWidget.flat(
                        width: 120,
                        color: Color(0xFF88BDED),
                        elevation: 4,
                        child: Text(
                            "8",
                            style: GoogleFonts.irishGrover(
                                fontSize: 35,
                                color: Color(0xFF65A3DC)
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
    Icons.eco,
    Icons.bolt,
    Icons.science,
    Icons.grass,
    Icons.bubble_chart,
    Icons.rocket,
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
            color: const Color(0xFF009BFD),
          );
        }),
      ),
    ),
  );
}