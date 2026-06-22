import 'package:levelup/domain/questao.dart';

class BancoDeDados{

  static List questoesL = [

    Questao(
      numero_questao:1,
      texto: "Texto I: Empatia é a capacidade de se colocar no lugar do outro, de compreender "
          "os sentimentos e perspectivas alheias e de usar essa compreensão para guiar nossas ações. "
          "No ambiente digital, contudo, essa habilidade parece diluir-se por trás das telas, onde o "
          "distanciamento físico e o anonimato muitas vezes reduzem a percepção do impacto de nossas "
          "palavras."
          "Texto II: As interações nas redes sociais frequentemente priorizam a velocidade em detrimento da "
          "profundidade. O clique rápido, o compartilhamento sem checagem e o comentário impulsivo criam um "
          "ecossistema onde a validação imediata (por meio de curtidas) se sobrepõe à escuta atenta. Para "
          "reverter esse cenário, urge o desenvolvimento de uma cidadania digital que inclua a prática consciente "
          "da alteridade.",
      enunciado: "Considerando os dois textos, o principal desafio para o exercício da empatia nas "
          "redes sociais virtuais reside na",
      a1:"A) necessidade de as plataformas digitais banirem o uso de perfis anônimos.",
        a2:"B) ausência de ferramentas tecnológicas que permitam a expressar emoções complexas.",
        a3:"C) falta de políticas públicas severas para a punição de discursos de ódio.",
        a4: "D) dinâmica de comunicação acelerada e do didtânciamento físico gerado pelas telas."
    ),

  ];
  static List questoesC = [
    Questao(
      numero_questao: 1,
      texto: "Cadeia alimentar: Capim -> Preá -> Cobra -> Gavião.",
      enunciado: "Se a população de preás diminuir, o que acontece com as cobras?",
      a1: "A) Aumentam de tamanho",
      a2: "B) Diminuem por falta de alimento",
      a3: "C) Mudam de comportamento",
      a4: "D) Não sofrem nenhuma ",
    ),

  ];

}