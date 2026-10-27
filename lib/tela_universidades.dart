import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaUniversidades extends StatefulWidget {
  const TelaUniversidades({super.key});

  @override
  State<TelaUniversidades> createState() => _TelaUniversidadesState();
}

class _TelaUniversidadesState extends State<TelaUniversidades> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
          appBar: AppBar(
            backgroundColor: Color(0xFFBDE0FE)
          ),
        body: SingleChildScrollView(
          child: Padding( 
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height:15),
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
                  )
                ),
                const SizedBox(height:20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFADD8FD),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 30),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 4
                    ),
                    child: Text(
                     "Nome da universidade",
                      style: GoogleFonts.inika(fontSize: 15,
                      ),
                    ),
    
                  ),
                ),
              ]
            )
          )
        )

      );
  }
}