import 'package:hive_flutter/hive_flutter.dart';

class StorageService {
  static final _instance = StorageService._internal();
  final _mybox = Hive.box('mybox');

  factory StorageService() => _instance;
  StorageService._internal();

  void writeData(String key, Map<String, dynamic> value) {
    _mybox.put(key, value);
  }

  Map<String, dynamic>? readData(String key) {
    return _mybox.get(key) as Map<String, dynamic>?;
  }

  void removeData(String key) {
    _mybox.delete(key);
  }
}
