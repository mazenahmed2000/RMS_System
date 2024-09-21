import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'romisaadb.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NOT NULL,
        password TEXT NOT NULL,
        role TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE patient (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        phone TEXT NOT NULL,
        gender TEXT NOT NULL,
        address TEXT NOT NULL,
        marital_status TEXT NOT NULL,
        job TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE medical_record_fixed (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        patient_id INTEGER,
        blood_type TEXT NOT NULL,
        description TEXT NOT NULL,
        FOREIGN KEY (patient_id) REFERENCES patient (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE medical_record_variable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        patient_id INTEGER,
        height REAL NOT NULL,
        weight REAL NOT NULL,
        vitamins TEXT,
        minerals TEXT,
        description TEXT NOT NULL,
        FOREIGN KEY (patient_id) REFERENCES patient (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE appointment (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        patient_id INTEGER,
        date TEXT NOT NULL,
        status TEXT NOT NULL,
        FOREIGN KEY (patient_id) REFERENCES patient (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE case_cost (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        case_type TEXT NOT NULL,
        cost REAL NOT NULL
      )
    ''');
  }
}
