import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levelup/telas/linguagens.dart';

class Escolha extends StatefulWidget {
  const Escolha({super.key});

  @override
  State<Escolha> createState() => _EscolhaState();
}

class _EscolhaState extends State<Escolha> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        appBar: AppBar(
            backgroundColor: Color(0xFFE1E0E0)
        ),
        backgroundColor: Colors.white,
        body:Column(
          children:[
            const SizedBox(height: 80),
            Text(
                'Level Up!',
              style: GoogleFonts.chewy(
                fontSize: 70,
              )
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Qual área vamos treinar hoje?',
                style: GoogleFonts.inika(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LFase1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFD4FD),
                    side: const BorderSide(
                      color: Color(0xFFF4BAF0),
                      width: 3.0,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 34, vertical: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4
                  ),
                  child:
                    Column(
                      children:[
                        Icon(
                            Icons.menu_book,
                            size: 40,
                            color: Color(0xFFDD97D7)
                        ),

                        Text(
                            'Linguagens',
                            style: GoogleFonts.chewy(
                                fontSize: 20,
                                color: Color(0xFFDD97D7)
                            )
                        ),
                    ]
                  ),

                ),
                const SizedBox(width: 15),
                ElevatedButton(

                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB0ECCF),
                      side: const BorderSide(
                        color: Color(0xFF9AD6BA),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 44, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    ),
                    child: Column(
                      children:[
                      Icon(
                          Icons.account_balance,
                          size: 40,
                          color: Color(0xFF76C6A1)
                      ),
                        Text(
                            'Humanas',
                            style: GoogleFonts.chewy(
                                fontSize: 20,
                                color: Color(0xFF76C6A1)
                            )
                        ),

                      ]
                    )

                ),
             ],
            ),
            const SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB3DBFD),
                      side: const BorderSide(
                        color: Color(0xFF9CC1E3),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 47, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    ),
                    child: Column(

                      children:[
                        Icon(
                            Icons.biotech,
                            size: 40,
                            color: Color(0xFF699FCC)
                        ),

                        Text(
                            'Ciências',
                            style: GoogleFonts.chewy(
                                fontSize: 20,
                                color: Color(0xFF699FCC)
                            )
                        ),
                      ]

                    )

                ),
                const SizedBox(width: 15),
                ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFCE9C),
                      side: const BorderSide(
                        color: Color(0xFFE8BB8E),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 31, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    ),
                    child: Column(
                      children:[
                        Icon(
                            Icons.calculate,
                            size: 40,
                            color: Color(0xFFDCA56F)
                        ),

                        Text(
                            'Matemática',
                            style: GoogleFonts.chewy(
                                fontSize: 20,
                                color: Color(0xFFDCA56F)
                            )
                        ),

                      ]
                    )

                ),
              ]
            ),
          ],

        ),

      );
  }
}