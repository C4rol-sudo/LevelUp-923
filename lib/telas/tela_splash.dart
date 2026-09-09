import 'package:flutter/material.dart';
import 'package:levelup/telas/tela_inicial.dart';
import 'package:levelup/shared_prefs.dart';
import 'tela_login.dart';


class TelaSplash extends StatefulWidget {
  const TelaSplash({super.key});


  @override
  State<TelaSplash> createState() => _TelaSplashState();
}


class _TelaSplashState extends State<TelaSplash> {
  SharedPrefs prefs = SharedPrefs();

  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
    bool status = await prefs.getUserStatus();
    await Future.delayed(Duration(seconds: 2));


    // status == true --> true
    // status == true --> false
    if (status) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaInicial();
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaLogin();
          },
        ),
      );
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF76BCFC),
      body: Center(
        child: Icon(
            Icons.rocket_launch_rounded,
            size: 170,
            color: Colors.white
        ),
      ),
    );
  }
}
