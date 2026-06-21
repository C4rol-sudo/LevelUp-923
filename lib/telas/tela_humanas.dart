import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:levelup/fases/H.fase1.dart';
import 'package:levelup/fases/H.fase2.dart';
import 'package:levelup/fases/H.fase3.dart';
import 'package:levelup/fases/H.fase4.dart';
import 'package:levelup/fases/H.fase5.dart';
import 'package:levelup/fases/H.fase6.dart';
import 'package:levelup/fases/H.fase7.dart';
import 'package:levelup/fases/H.fase8.dart';

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
              children: [
                SingleChildScrollView(
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
