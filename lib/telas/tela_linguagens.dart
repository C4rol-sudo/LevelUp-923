import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:levelup/telas/linguagens.dart';
import 'package:levelup/fases/L.fase2.dart';
import 'package:levelup/fases/L.fase3.dart';
import 'package:levelup/fases/L.fase4.dart';
import 'package:levelup/fases/L.fase5.dart';
import 'package:levelup/fases/L.fase6.dart';
import 'package:levelup/fases/L.fase7.dart';
import 'package:levelup/fases/L.fase8.dart';

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
              backgroundColor: Color(0xFFDA8BD3)
          ),
          backgroundColor: Color(0xFFFFD8FC),
          body: SingleChildScrollView(
                  child: Column(
                  children: [
                    const SizedBox(height: 33),
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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
                                    color: Color(0xFFDA8BD3)
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


      );
  }
}