import 'package:coisas_de_nenem/daos/scripts.dart';
import 'package:path/path.dart' show join;
import 'package:sqflite/sqflite.dart';

import '../models/anuncio.dart';

class AnuncioDAO {
  Future<Database> getDatabase() async {
    Database db = await openDatabase(
        join(await getDatabasesPath(), 'anuncio_database.db'),
        onCreate: ((db, version) {
      return db.execute(createTableAnuncio);
    }), version: 1);
    return db;
  }

  Future<List<Anuncio>> readAll() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query("Anuncio");

    final result = List.generate(maps.length, (index) {
      return Anuncio(
        id: maps[index]['id'],
        usuarioID: maps[index]['usuarioID'],
        tipoAnuncio: maps[index]['tipoAnuncio'],
        descricao: maps[index]['descricao'],
        descricaoAdicional: maps[index]['descricaoAdicional'],
        descricaoComplementar: maps[index]['descricaoComplementar'],
        expectativa: maps[index]['expectativa'],
        expectativaAdicional: maps[index]['expectativaAdicional'],
        expectativaComplementar: maps[index]['expectativaComplementar'],
        estado: maps[index]['estado'],
        cidade: maps[index]['cidade'],
        bairro: maps[index]['bairro'],
        exibirContato: maps[index]['exibirContato'],
        dataAnuncio: maps[index]['dataAnuncio'],
        status: maps[index]['status'],
      );
    });
    return result;
  }

  Future readAnuncio(int id) async {
    final db = await getDatabase();
    return db.query("Anuncio", where: ' id = ? ', whereArgs: [id]);
  }

  Future<int> insertAnuncio(Anuncio anuncio) async {
    final db = await getDatabase();
    return db.insert("Anuncio", anuncio.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int> updateAnuncio(Anuncio anuncio) async {
    final db = await getDatabase();
    return db.update(
      "Anuncio",
      anuncio.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
      where: ' id = ? ',
      whereArgs: [anuncio.id],
    );
  }

  Future deleteAnuncio(int id) async {
    final db = await getDatabase();
    return db.delete("Anuncio", where: ' id = ? ', whereArgs: [id]);
  }
}
