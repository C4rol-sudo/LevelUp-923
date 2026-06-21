import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper{

  initDB() async{
    String path = await getDatabasesPath();
    String dbName = 'levelup.db';
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
    a4 TEXT NOT NULL,
    );
    ''';
    await db.execute(sql);

    sql = '''INSERT INTO QUESTAO(numero_questao, texto, enunciado, a1, a2, a3, a4) VALUES (1, 
    'Texto I: Empatia é a capacidade de se colocar no lugar do outro, de compreender 
          os sentimentos e perspectivas alheias e de usar essa compreensão para guiar nossas ações. 
          No ambiente digital, contudo, essa habilidade parece diluir-se por trás das telas, onde o 
          distanciamento físico e o anonimato muitas vezes reduzem a percepção do impacto de nossas 
          palavras.
          Texto II: As interações nas redes sociais frequentemente priorizam a velocidade em detrimento da 
          profundidade. O clique rápido, o compartilhamento sem checagem e o comentário impulsivo criam um 
          ecossistema onde a validação imediata (por meio de curtidas) se sobrepõe à escuta atenta. Para 
          reverter esse cenário, urge o desenvolvimento de uma cidadania digital que inclua a prática consciente 
          da alteridade.',
          'Considerando os dois textos, o principal desafio para o exercício da empatia nas redes sociais virtuais reside na',
          'A) necessidade de as plataformas digitais banirem o uso de perfis anônimos.',
          'B) ausência de ferramentas tecnológicas que permitam a expressar emoções complexas.',
          'C) falta de políticas públicas severas para a punição de discursos de ódio.',
          'D) dinâmica de comunicação acelerada e do didtânciamento físico gerado pelas telas.');
          ''';
    await db.execute(sql);
    String sqlNatureza = '''
    CREATE TABLE QUESTAO_NATUREZA(
    id INTEGER PRIMARY KEY AUTOINCREMENTE,
    materia TEXT NOT NULL,
    numero_questao INTEGER NOT NULL,
    texto TEXT NOT NULL,
    enunciado TEXT NOT NULL,
    a1 TEXT NOT NULL,
    a2 TEXT NOT NULL,
    a3 TEXT NOT NULL,
    a4 TEXT NOT NULL,
    a5 TEXT NOT NULL,
    resposta_correta TEXT NOT NULL
    );
    ''';
    await db.execute(sqlNatureza);

    sqlNatureza = '''
    INSERT INTO QUESTAO_NATUREZA(materia, numero_questao, texto, enunciado, a1, a2, a3, a4, resposta_correta) 
    VALUES (
    'Biologia', 
    1, 
    'Cadeia alimentar: Capim -> Preá -> Cobra -> Gavião.',
    'Se a população de preás diminuir, o que acontece com as cobras?', 
    'A) Aumentam de tamanho', 
    'B) Diminuem de tamanho', 
    'C) Mudam de comportamento', 
    'D) Não sofrem alteração', 
    );
    ''';
    await db.execute(sqlNatureza);
  } 
} 