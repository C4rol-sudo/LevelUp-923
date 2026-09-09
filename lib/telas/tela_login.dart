import 'package:flutter/material.dart';
import 'package:levelup/bd/db_helper.dart';
import 'package:levelup/telas/tela_inicial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:levelup/telas/tela_splash.dart';

import '../bd/user_dao.dart';


class TelaLogin extends StatefulWidget {
  const TelaLogin ({super.key});


  @override
  State<TelaLogin> createState() => _TelaLogin();
}


class _TelaLogin extends State<TelaLogin> {
  TextEditingController usuario = TextEditingController(); //acesso e controle sobre o usuário
  TextEditingController senha = TextEditingController(); //acesso e controle sobre a senha


  @override
  void initState() {
    super.initState(); //Verificação rápida


    loadData();
  }


  loadData() async {
    final prefs = await SharedPreferences.getInstance();
    bool status = prefs.getBool('usuario') ?? false;
    if (bool == true) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) {
                return TelaInicial();
              }
          )
      );
    }
  }




  @override
  Widget build(BuildContext context) {
    //build = construir
    return SafeArea( //permite q somente a área útil da tela seja usada, diferente do Scaffold
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //Alinhamento do eixo principal
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //Alinhamento do eixo tranversal. Esticar
              children: [
                Text(
                  'Entre no LevelUp',
                  style: GoogleFonts.chewy( fontSize: 38,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                    shadows: const [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      color: Colors.black12,
                    ),
                    ]
                  )

                ),
                SizedBox(height: 24),
                TextField(
                  controller: usuario,
                  decoration: InputDecoration(
                    hintText: 'Usuário',
                    focusedBorder: buildUserOutlineInputBorder(),
                    border: buildUserOutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: senha,
                  //Com o controller é possível recuperar textos e manipular o TextField
                  obscureText: true,
                  //oculta os números digitados na senha.
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    focusedBorder: buildPasswordOutlineInputBorder(),
                    border: buildUserOutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1E88E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Cadastrar usuário',
                    style: TextStyle(
                      color: Color(0xFF1E88E5),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),




                ),
              ]
          ),
        ),
      ),
    );
  }


  onPressed() async {
    String username = usuario.text;
    String password = senha.text;


    bool isAuth = await UserDao().login(username, password);
    // if (user == 'marina@gmail.com' && password == '123456'){

    if (isAuth) {
      Navigator
          .pushReplacement( //Substitui a página da senha pela página de início
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaInicial();
          },
        ),
      );


      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('usuário', true);
    } else {
      print('Usuário ou senha incorretos');
    }
  }


  buildPasswordOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
    );
  }

  buildUserOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
    );
  }




}


