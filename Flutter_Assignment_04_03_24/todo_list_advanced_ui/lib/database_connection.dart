import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list_advanced_ui/main.dart';

dynamic database;

class ToDoModalClass {
  String title;
  String description;
  String date;
  // bool isSelected;
  int? cardNo;
  ToDoModalClass({
    this.cardNo,
    required this.title,
    required this.description,
    required this.date,
    // required this.isSelected,
  });

  Map<String, dynamic> dataMap() {
    // int ex = 0;
    // if (isSelected == true) {
    //   ex = 1;
    // }
    return {
      'cardNo': cardNo,
      'title': title,
      'description': description,
      'date': date,
      // 'isSelected': ex
    };
  }

  @override
  String toString() {
    return '{title:$title,description: $description, date:$date, cardNo:$cardNo}';
  }
}

Future<void> connection() async {
  database = await openDatabase(
    join(await getDatabasesPath(), 'TasksDB.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE TASKS(
          cardNo INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          description TEXT,
          date TEXT
        )''');
    },
  );

  final localDB = await database;
  list = await localDB.query('Tasks');
}

Future addTask(ToDoModalClass obj) async {
  final localDB = await database;
  await localDB.insert(
    'Tasks',
    obj.dataMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  list = await localDB.query('Tasks');
}

Future editTask(ToDoModalClass obj) async {
  final localDB = await database;
  await localDB.update(
    'Tasks',
    obj.dataMap(),
    where: 'cardNo = ?',
    whereArgs: [obj.cardNo],
  );
  list = await localDB.query('Tasks');
}

Future deleteTask(int obj) async {
  final localDB = await database;
  await localDB.delete(
    'Tasks',
    where: 'cardNo = ?',
    whereArgs: [obj],
  );
  list = await localDB.query('Tasks');
  print(list);
  print('deleted item successful');
}
