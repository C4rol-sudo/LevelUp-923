import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LFase1 extends StatefulWidget {
  const LFase1({super.key});

  @override
  State<LFase1> createState() => _LFase1State();
}

class _LFase1State extends State<LFase1> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE8ACE3),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child:Column(
            children:[
              Row(
                children: [
                  Text(
                      "Questão 1",
                      style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
                  ),
                ]
              ),
               const SizedBox(height:5),
               Text(
                  "Redes sociais são o novo cigarro. Elas viciam, alteram a química cerebral e são desenhadas "
                "para manter o usuário preso ao ecossistema pelo maior tempo possível. O curtir é a dose de "
                  "dopamina barata que recebemos diariamente.",
                style: GoogleFonts.inika(fontSize: 15)
              ),

            Questao(
              "A estratégia argumentativa utilizada pelo autor do texto acima baseia-se em uma:",
              ["A) dedução lógica partindo de premissas universais.      ",
              "B) analogia para aproximar conceitos de universos distintos.",
              "C) generalização indevida sobre o comportamento dos jovens.",
              "D) apelo à autoridade de especialistas em neurociência.",
              "E) ironia como forma de desqualificar as empresas de tecnologia."]
            ),
              Row(
                  children: [
                    Text(
                        "Questão 2",
                        style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                  ]
              ),
              Questao(
                  "O uso de dados estatísticos em textos de opinião tem como principal função discursiva:",
                  ["A) ilustrar o texto com informações supérfluas.          ",
                    "B) conferir autoridade e objetividade ao argumento do autor.",
                    "C) emocionar o leitor por meio de números impactantes.",
                    "D) mascarar a falta de repertório cultural do redator.    ",
                    "E) substituir completamente a necessidade de uma tese clara."]
              ),
              Row(
                  children: [
                    Text(
                        "Questão 3",
                        style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                  ]
              ),
              const SizedBox(height:5),
              Text(
                  "Não se trata de proibir as telas, mas de regulamentar o seu uso na primeira infância. "
                  "Se não damos a chave de um carro a uma criança de cinco anos, por que daríamos um smartphone sem "
                  "supervisão?",
                  style: GoogleFonts.inika(fontSize: 15)
              ),
              Questao(
                  "No texto acima, a pergunta retórica final cumpre o papel de:       ",
                  ["A) demonstrar dúvida genuína do autor sobre o tema.",
                    "B) transferir para o leitor a responsabilidade de encontrar uma solução.",
                    "C) enfatizar o absurdo de uma situação por meio de uma comparação extrema.",
                    "D) ironizar as práticas pedagógicas adotadas pelas escolas modernas.",
                    "E) sugerir que dirigir e usar celulares possuem o mesmo impacto motor."]
              ),
              Row(
                  children: [
                    Text(
                        "Questão 4",
                        style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                  ]
              ),
              Questao(
                  "Quando um editorial de jornal utiliza a primeira pessoa do plural (nós/consideramos), "
                  "esse recurso linguístico busca:",
                  ["A) demonseximir o autor individual da responsabilidade sobre o texto.",
                    "B) criar uma proximidade artificial com o leitor infantil.",
                    "C) representar a voz coletiva e a linha institucional do veículo.",
                    "D) demonstrar hesitação e falta de convicção nos argumentos.",
                    "E) aproximar o texto jornalístico da linguagem literária da ficção."]
              ),
              Row(
                  children: [
                    Text(
                        "Questão 5",
                        style: GoogleFonts.inika(fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                  ]
              ),
              Questao(
                  "Em debates políticos, a estratégia de atacar o caráter do interlocutor em vez de "
                  "contra-argumentar suas ideias é uma falácia conhecida como:",
                  ["A) Ad hominem.                                                                        ",
                    "B) Ad populum.                                                                        ",
                    "C) Espantalho.                                                                        ",
                    "D) Falsa equivalência.                                                                 ",
                    "E) Petição de princípio.                                                                "]
              ),
          ]
        )
        )

      );
  }

  Widget Questao(String enunciado, List<String> alternativas) {
    return SingleChildScrollView(
      child:Center(
      child: Column(
        children: [
          const SizedBox(height: 5),
          Text(
            enunciado,
            style: GoogleFonts.inika(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          for (var texto in alternativas)

            ElevatedButton(
              onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF8E5F7),
                foregroundColor: Colors.black
              ),
              child: Text(
                texto,
                style: GoogleFonts.inika(fontSize: 12,
                ),
              ),
            ),

          const SizedBox(height: 15),
        ],
      ),
      )
    );
  }

}