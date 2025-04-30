import 'package:get/get.dart';
import 'package:project_template/base/base_state.dart';
import 'package:project_template/models/user_model.dart';

class HomeController extends GetxController with BaseState {
  UserModel getLoginUser() {
    var userData = services.storage.readData('user');
    if (userData == null || userData.isEmpty) {
      return UserModel();
    } else {
      return UserModel.fromJson(userData);
    }
  }
}
