import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper{

  Future<Database> initDB() async{
    String path = await getDatabasesPath();
    String dbName = 'levelup.bd';
    String dbPath = join(path, dbName);

    Database db = await openDatabase(dbPath, version: 1, onCreate: onCreateDB,);
    return db;
  }

  FutureOr<void> onCreateDB(Database db, int version) async{

    //Tabelas

    String sql = '''
   CREATE TABLE QUESTAO(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   numero_questao INTEGER NOT NULL,
   texto TEXT NOT NULL,
   enunciado TEXT NOT NULL,
   a1 TEXT NOT NULL,
   a2 TEXT NOT NULL,
   a3 TEXT NOT NULL,
   a4 TEXT NOT NULL
   );
   ''';
    await db.execute(sql);

    //Dados

    sql = '''INSERT INTO QUESTAO(numero_questao, texto, enunciado, a1, a2, a3, a4) VALUES (1,
   'Texto I: Empatia é a capacidade de se colocar no lugar do outro, de compreender os sentimentos e perspectivas alheias e de usar essa compreensão para guiar nossas ações. No ambiente digital, contudo, essa habilidade parece diluir-se por trás das telas, onde o distanciamento físico e o anonimato muitas vezes reduzem a percepção do impacto de nossas palavras.\nTexto II: As interações nas redes sociais frequentemente priorizam a velocidade em detrimento da profundidade. O clique rápido, o compartilhamento sem checagem e o comentário impulsivo criam um ecossistema onde a validação imediata (por meio de curtidas) se sobrepõe à escuta atenta. Para reverter esse cenário, urge o desenvolvimento de uma cidadania digital que inclua a prática consciente da alteridade.',
  'Considerando os dois textos, o principal desafio para o exercício da empatia nas redes sociais virtuais reside na',
   'A) necessidade de as plataformas digitais banirem o uso de perfis anônimos.',
   'B) ausência de ferramentas tecnológicas que permitam a expressar emoções complexas.',
   'C) falta de políticas públicas severas para a punição de discursos de ódio.',
   'D) dinâmica de comunicação acelerada e do distanciamento físico gerado pelas telas.');
   ''';
    await db.execute(sql);
    sql = '''INSERT INTO QUESTAO(numero_questao, texto, enunciado, a1, a2, a3, a4) VALUES (2,
   'A rede social é o novo espaço de convivência, mas também de exclusão. Se por um lado democratiza o acesso à informação, por outro cria bolhas de confirmação onde o contraditório é silenciado pelo algoritmo.',
   'Considerando o texto, o impacto das redes sociais na organização social contemporânea revela uma contradição fundamentada na',
   'A) expansão da cominicação digital em detrimento da privacidade dos usuários de dados.',
   'B) superação das barreiras geográficas em contraste com a lentidão dos processos de interação.',
   'C) universalização do saber aliada ao fortalecimento do debate democrático real.',
   'D) facilitação do acesso aos conteúdos em oposição à restrição de perspectivas diferentes.');
   ''';
    await db.execute(sql);
    sql = '''INSERT INTO QUESTAO(numero_questao, texto, enunciado, a1, a2, a3, a4) VALUES (3,
   'O quinze" não relata apenas a seca; relata a migração, a fome, a perda da dignidade humana diante da miséria. Chico Bento e sua família, ao cruzarem a caatinga esturricada, não lutam contra um fenômeno climático apenas, mas contra uma estrutura social que os abandona à própria sorte. A linguagem de Rachel de Queiroz, embora regional, alcança o universal ao tocar na dor do homem desamparado.',
   'O fragmento de texto crítico analisa a obra O Quinze, de Rachel de Queiroz, inserida na segunda fase do Modernismo brasileiro. A partir da leitura do texto, depreende-se que a relevância social da obra reside no fato de que ela',
   'A) limita-se a documentar os aspectos climáticos rigorosos do Nordeste brasileiro.',
   'B) adota uma linguagem técnica e formal para descrever o fenômeno da transumância.',
   'C) utiliza a temática da seca como pano de fundo para denunciar o descaso social com o retirante.',
   'D) propõe soluções governamentais definitivas para o problema da escassez de água na região.');
   ''';
    await db.execute(sql);
    sql = '''INSERT INTO QUESTAO(numero_questao, texto, enunciado, a1, a2, a3, a4) VALUES (4,
   'Isso aqui não é um cachimbo\nQuando lemos um anúncio publicitário, uma receita de bolo ou um manual de instruções, raramente pensamos na engrenagem que faz aquelas palavras funcionarem. O código — a língua portuguesa — serve aqui como uma ponte direta entre a intenção de quem escreve e a ação de quem lê. Mas quando a linguagem se volta sobre si mesma, como num poema que fala sobre o ato de escrever ou num dicionário que explica o significado da palavra palavra, o circuito muda de figura. O foco passa a ser o próprio instrumento.',
   'O texto acima descreve um fenômeno em que a linguagem é utilizada para explicar ou falar sobre o próprio código linguístico. Esse mecanismo predomina em textos que manifestam a função',
   'A) Apelativa (ou conativa), cujo objetivo principal é convencer e persuadir o leitor.',
   'B) Fática, que busca testar, prolongar ou interromper o canal de comunicação.',
   'C) Emotiva (ou expressiva), centrada nas sensações, sentimentos e opiniões do emissor.',
   'D) Metalinguística, na qual o código é o tema e o meio de explicação da própria mensagem.');
   ''';
    await db.execute(sql);

    ///String sqlNatureza = '''
   ///CREATE TABLE QUESTAO_NATUREZA(
   ///id INTEGER PRIMARY KEY AUTOINCREMENTE,
   ///materia TEXT NOT NULL,
   ///numero_questao INTEGER NOT NULL,
   ///texto TEXT NOT NULL,
   ///enunciado TEXT NOT NULL,
   ///a1 TEXT NOT NULL,
   ///a2 TEXT NOT NULL,
   ///a3 TEXT NOT NULL,
   ///a4 TEXT NOT NULL,
   ///a5 TEXT NOT NULL,
   ///resposta_correta TEXT NOT NULL
   ///);
   ///''';
    ///await bd.execute(sqlNatureza);

    ///sqlNatureza = '''
   ///INSERT INTO QUESTAO_NATUREZA(materia, numero_questao, texto, enunciado, a1, a2, a3, a4, resposta_correta)
   ///VALUES (
   ///'Biologia',
   ///1,
   ///'Cadeia alimentar: Capim -> Preá -> Cobra -> Gavião.',
   ///'Se a população de preás diminuir, o que acontece com as cobras?',
   ///'A) Aumentam de tamanho',
   ///'B) Diminuem de tamanho',
   ///'C) Mudam de comportamento',
   ///'D) Não sofrem alteração',
   ///'B) Diminuem de tamanho'
   ///);
   ///''';
    ///await bd.execute(sqlNatureza);

  }
}
