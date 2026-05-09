import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levelup/tela_linguagens.dart';
import 'package:levelup/tela_ciencias.dart';
import 'package:levelup/tela_matematica.dart';
import 'package:levelup/tela_humanas.dart';

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
                'Qual área você deseja treinar?',
                style: GoogleFonts.inika(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children:[
                SizedBox(width: 25),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.menu_book,
                    size: 20,
                      color: Color(0xFFDD97D7)
                  ),

                  label: Text(
                      'Linguagens',
                          style: GoogleFonts.chewy(
                            fontSize: 20,
                            color: Color(0xFFDD97D7)
                          )
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaLinguagens()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFD4FD),
                    side: const BorderSide(
                      color: Color(0xFFF4BAF0),
                      width: 3.0,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4
                  )

                ),
                const SizedBox(width: 15),
                ElevatedButton.icon(
                    icon: Icon(
                        Icons.account_balance,
                        size: 20,
                        color: Color(0xFF76C6A1)
                    ),

                    label: Text(
                        'Humanas',
                        style: GoogleFonts.chewy(
                            fontSize: 20,
                            color: Color(0xFF76C6A1)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TelaHumanas()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB0ECCF),
                      side: const BorderSide(
                        color: Color(0xFF9AD6BA),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    )

                ),
             ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 25),
                ElevatedButton.icon(
                    icon: Icon(
                        Icons.biotech,
                        size: 20,
                        color: Color(0xFF699FCC)
                    ),

                    label: Text(
                        'Ciências',
                        style: GoogleFonts.chewy(
                            fontSize: 20,
                            color: Color(0xFF699FCC)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TelaCiencias()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB3DBFD),
                      side: const BorderSide(
                        color: Color(0xFF9CC1E3),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 33, vertical: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    )

                ),
                const SizedBox(width: 15),
                ElevatedButton.icon(
                    icon: Icon(
                        Icons.calculate,
                        size: 20,
                        color: Color(0xFFDCA56F)
                    ),

                    label: Text(
                        'Matemática',
                        style: GoogleFonts.chewy(
                            fontSize: 20,
                            color: Color(0xFFDCA56F)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TelaMatematica()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFCE9C),
                      side: const BorderSide(
                        color: Color(0xFFE8BB8E),
                        width: 3.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 4
                    )

                ),
              ]
            ),
          ],

        ),

      );
  }
}