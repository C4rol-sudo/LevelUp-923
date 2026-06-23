import 'package:flutter/material.dart';
import 'package:levelup/bd/db_helperconquistas.dart';

class _ConquistasState extends State<Conquistas> {
 final DbHelperconquistas _dbHelper = DbHelperconquistas();
 
 List<Map<String, dynamic>> listaConquistas = [];


 @override
 void initState(){
   super.initState();
   _carregarConquistas();
 }


 void _carregarConquistas() async{
   final dados = await _dbHelper.buscarConquistas();
   setState((){


     listaConquistas = dados;
   });
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
           backgroundColor: Color(0xFFA7EACE)
       ),
      backgroundColor: Color(0xFFD0FFEC),


     body: ListView.builder(
       itemCount: listaConquistas.length,
       itemBuilder: (context, index){
         final conquista = listaConquistas[index];


         final bool isDesbloqueado = conquista['desbloqueado'] == 1;


         return ListTile(
             leading: Icon (isDesbloqueado ? Icons.emoji_events : Icons.lock,
             color: isDesbloqueado ? Colors.amber : Colors.grey),


         title: Text(
           conquista ['titulo'],
           style: const TextStyle(fontWeight: FontWeight.bold),
         ),
           subtitle: Text(conquista['descricao']),


           onTap: () async{
               await _dbHelper.atualizarConquista(conquista['id']);


               _carregarConquistas();
           },
         );
       },
     ),


     );
 }
}
