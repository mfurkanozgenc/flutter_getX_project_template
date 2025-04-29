class DatabaseService {
  static final _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  DatabaseService._internal();
}
