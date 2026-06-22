import 'package:flutter/material.dart';
import 'package:levelup/domain/ranking.dart';
import 'package:levelup/bd/ranking_dao.dart';
import 'package:google_fonts/google_fonts.dart';
class Pontuacao extends StatefulWidget {
  const Pontuacao({super.key});
  @override
  State<Pontuacao> createState() => _PontuacaoState();
}
class _PontuacaoState extends State<Pontuacao> {
  List<Ranking> rankings = [];
  @override
  void initState() {
    super.initState();
    loadState();
  }
  Future<void> loadState() async {
    rankings = await RankingDao().listarRanking();setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF898DE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFED76CD),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Ranking",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: rankings.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: rankings.length, // aqui pode ter 12 ou mais
        itemBuilder: (context, i) {
          return RankingCard(
            position: i + 1,
            name: rankings[i].name,
            level: rankings[i].level.toString(),
          );
        },
      ),
    );
  }
}
class RankingCard extends StatelessWidget {
  final int position;
  final String name;
  final String level;
  const RankingCard({
    super.key,
    required this.position,
    required this.name,
    required this.level,
  });
  Color getCardColor(int pos) {
    if (pos == 1) return const Color(0xFFFACEF4);
    if (pos == 2) return const Color(0xFFFACEF4);if (pos == 3) return const Color(0xFFFACEF4);
    if (pos == 4) return const Color(0xFFFACEF4);
    if (pos == 5) return const Color(0xFFFACEF4);
    if (pos == 6) return const Color(0xFFFACEF4);
    if (pos == 7) return const Color(0xFFFACEF4);
    if (pos == 8) return const Color(0xFFFACEF4);
    if (pos == 9) return const Color(0xFFFACEF4);
    if (pos == 10) return const Color(0xFFFACEF4);
    if (pos == 11) return const Color(0xFFFACEF4);
    if (pos == 12) return const Color(0xFFFACEF4);
    return const Color(0xFFEDEDED);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical:
      10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: getCardColor(position),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFFED76CD),
            child: Icon(Icons.person, size: 30),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,),
                ),
                Text(
                  "LV $level",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Color(0xFFFDF9FD),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "$position",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

