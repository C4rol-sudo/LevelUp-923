import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:levelup/domain/questao.dart';

class EstruturaQuestao extends StatefulWidget {
  Questao questao;
  EstruturaQuestao({super.key, required this.questao});
  @override
  State<EstruturaQuestao> createState() => _EstruturaQuestaoState();
}

class _EstruturaQuestaoState extends State<EstruturaQuestao>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text('Questão ${widget.questao.numero_questao}',
            style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
        ),
        const SizedBox(height:5),
        Text(widget.questao.texto,
            style: GoogleFonts.inika(fontSize: 15)),
        const SizedBox(height:5),
        Text(
          widget.questao.enunciado,
          style: GoogleFonts.inika(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
          ElevatedButton(
            onPressed: (){
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF8E5F7),
                foregroundColor: Colors.black
            ),
            child: Text(
              widget.questao.a1,
              style: GoogleFonts.inika(fontSize: 12,
              ),
            ),
          ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF8E5F7),
              foregroundColor: Colors.black
          ),
          child: Text(
            widget.questao.a2,
            style: GoogleFonts.inika(fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF8E5F7),
              foregroundColor: Colors.black
          ),
          child: Text(
            widget.questao.a3,
            style: GoogleFonts.inika(fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF8E5F7),
              foregroundColor: Colors.black
          ),
          child: Text(
            widget.questao.a4,
            style: GoogleFonts.inika(fontSize: 12,
            ),
          ),
        ),
      ]
    );

  }

}