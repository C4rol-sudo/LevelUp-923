import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import'package:levelup/fases/M.fase1.dart';
import'package:levelup/fases/M.fase2.dart';
import'package:levelup/fases/M.fase3.dart';
import'package:levelup/fases/M.fase4.dart';
import'package:levelup/fases/M.fase5.dart';
import'package:levelup/fases/M.fase6.dart';
import'package:levelup/fases/M.fase7.dart';
import'package:levelup/fases/M.fase8.dart';

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
                SingleChildScrollView(
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
                                GestureDetector(
                                    onTap: () { Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MFase1()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase2()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase3()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase4()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase5()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase6()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase7()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
                                            builder: (context) => MFase8()
                                        )
                                    );
                                    },
                                    child: HexagonWidget.flat(
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
