import 'package:flutter/material.dart';
import 'package:levelup/bd/conquistas_dao.dart';


class Conquistas extends StatefulWidget {
  const Conquistas({super.key});


  @override
  State<Conquistas> createState() => _ConquistasState();
}


class _ConquistasState extends State<Conquistas> {
  final ConquistasDao _conquistasDao = ConquistasDao();


  List<Map<String, dynamic>> listaConquistas = [];


  @override
  void initState() {
    super.initState();
    _carregarConquistas();
  }


  void _carregarConquistas() async {
    final dados = await _conquistasDao.listarConquistas();
    setState(() {
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
        itemBuilder: (context, index) {
          final conquista = listaConquistas[index];
          final bool isDesbloqueado = conquista['desbloqueado'] == 1;

          return Card(
            color: Colors.white.withOpacity(0.85),
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(
                isDesbloqueado ? Icons.emoji_events : Icons.lock,
                color: isDesbloqueado ? Colors.amber : Colors.grey,
              ),
              title: Text(
                conquista['titulo'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(conquista['descricao']),
              onTap: () async {
                await _conquistasDao.atualizarConquista(conquista['id']);
                _carregarConquistas();
              },
            ),
          );
        },
      ),
    );
  }
}
