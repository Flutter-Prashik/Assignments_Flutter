import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class Player {
  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {'name': name, 'jerNo': jerNo, 'runs': runs, 'avg': avg};
  }

  @override
  String toString() {
    return '{name:$name, jerNo:$jerNo, runs:$runs, avg: $avg}';
  }
}

Future insertPlayer(Player obj) async {
  final localDB = await database;
  await localDB.insert(
    'Player',
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future getPlayerData() async {
  final localDB = await database;
  List<Map<String, dynamic>> listPlayers = await localDB.query('Player');
  return List.generate(
    listPlayers.length,
    (index) {
      return Player(
        name: listPlayers[index]['name'],
        jerNo: listPlayers[index]['jerNo'],
        runs: listPlayers[index]['runs'],
        avg: listPlayers[index]['avg'],
      ).toString();
    },
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), 'PlayerDB.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE tABLE pLAYER(
        name TEXT,
        jerNo INTEGER PRIMARY KEY,
        runs INT,
        avg REAL
      )''');
    },
  );

  Player player1 = Player(
    name: 'Virat Kohli',
    jerNo: 18,
    runs: 13848,
    avg: 58.67,
  );

  Player player2 = Player(
    name: 'Rohit Sharma',
    jerNo: 45,
    runs: 10709,
    avg: 49.12,
  );

  Player player3 = Player(
    name: 'Shubman Gill',
    jerNo: 77,
    runs: 2271,
    avg: 61.4,
  );
  insertPlayer(player1);
  insertPlayer(player2);
  insertPlayer(player3);

  print(getPlayerData());
}
