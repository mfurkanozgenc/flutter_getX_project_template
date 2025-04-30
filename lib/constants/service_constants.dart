import 'package:project_template/services/action_service.dart';
import 'package:project_template/services/database_service.dart';
import 'package:project_template/services/storage_service.dart';

class ServiceConstants {
  final ActionService action = ActionService();
  final DatabaseService db = DatabaseService();
  final StorageService storage = StorageService();
}
