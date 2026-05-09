import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:levelup/pontuacao.dart';
import 'package:levelup/conquistas.dart';
import 'package:levelup/perfil.dart';
import 'package:levelup/configuracoes.dart';
import 'package:levelup/escolha_area.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _telainicial();
}

class _telainicial extends State<TelaInicial> {
  int selectedIndex = 0;
  List pages = [
    const TelaInicio(),
    Pontuacao(),
    Conquistas(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold
        (
        backgroundColor: const Color(0xFFBDE0FE),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Pontuação'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Conquistas'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ),
      );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 25.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  iconSize: 35,
                  icon: const Icon(
                    Icons.settings,
                    color: Color(0xFFBDE0FE),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Configuracoes()),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 110),
          Text(
            'Level Up!',
            style: GoogleFonts.chewy(
              fontSize: 65,
              color: Colors.black,
              shadows: const [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  color: Colors.black12,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          const Icon(
            Icons.rocket_launch_rounded,
            size: 100,
            color: Colors.white,
          ),

          const SizedBox(height: 20),

          Text(
            'Rumo à nota 1000!',
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Aperte o play para começar:',
            textAlign: TextAlign.center,
            style: GoogleFonts.inika(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 65,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              iconSize: 26,
              icon: const Icon(
                Icons.play_arrow,
                color: Color(0xFFBDE0FE),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Escolha()),
                );
              },
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}