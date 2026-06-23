import 'package:flutter/material.dart';
import 'package:levelup/bd/desempenho_dao.dart';
import 'package:levelup/domain/desempenho.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<Desempenho> listaDesempenho = [];
  final DesempenhoDao _desempenhoDao = DesempenhoDao();

  @override
  void initState() {
    super.initState();
    carregarDados();
  }
  void carregarDados() async {
    List<Desempenho> dados = await _desempenhoDao.listarDesempenho();
    setState(() {
      listaDesempenho = dados;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFC8B7ED),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 45,
              backgroundColor: const Color(0xFFC8B7ED),
              child: Icon(Icons.person, size: 45, color: Color(0xFFFAFAFA)),
            ),
            const SizedBox(height: 10),
            const Text("Nome do Aluno", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            const Text("Seu Desempenho:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            for (var item in listaDesempenho) ...[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: ListTile(
                  leading: const Icon(Icons.bar_chart, color: Color(0xFFC8B7ED)),
                  title: Text(item.materia),
                  subtitle: Text("Acertos: ${item.acertos}"),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}