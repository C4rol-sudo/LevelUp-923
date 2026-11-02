import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levelup/domain/universidade.dart';

class EstruturaBotao extends StatefulWidget{
  Universidade universidade;
  EstruturaBotao({super.key, required this.universidade});
  @override
  State<EstruturaBotao> createState() => _EstruturaBotaoState();
}

class _EstruturaBotaoState extends State<EstruturaBotao>{
  @override
  Widget build(BuildContext context){
    return Column(
      children:[
        SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFBDE0FE),
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 34, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 4
          ),
          child: Row(
            children: [
              SizedBox(width: 0),
                CircleAvatar(
                radius: 34,
                backgroundColor: Color(0xFFFFFFFF),
                child: Icon(Icons.school, size: 30, color: Color(0xFF9BD0FD)),
                ),
              SizedBox(width: 15),
              Column(
                children:[
                Text('${widget.universidade.nome}',
                style:GoogleFonts.inika(fontSize: 17, fontWeight: FontWeight.bold)),
                Row(
                  children:[
                    Text('${widget.universidade.cidade}', style: GoogleFonts.inika(fontSize: 15)),
                    Text('|', style: GoogleFonts.inika(fontSize: 15)),
                    Text('${widget.universidade.estado}', style: GoogleFonts.inika(fontSize:15))
                  ]
                  ),
                ]
              )
            ]
          )
        ),
      ),
        SizedBox(height: 15)
      ]
    );
  }
}
