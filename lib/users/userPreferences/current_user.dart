import 'package:cloesth_app/users/model/user.dart';
import 'package:cloesth_app/users/userPreferences/user_preferencs.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController {
  Rx<User> _currentUser = User(0, '', '', '').obs;

  User get user => _currentUser.value;

  getUserInfo() async {
    User? getUserInfoFromLocalStroage = await RememberUserPrefs.readUserInfo();
    _currentUser.value = getUserInfoFromLocalStroage!;
  }
}
