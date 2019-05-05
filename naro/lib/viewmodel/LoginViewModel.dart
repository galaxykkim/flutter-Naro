import 'package:naro/common/Config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel {

  /// 자동로그인여부설정
  void setAutoLogin(bool isAutoLoagin) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool(Config.key_autoLogin, isAutoLoagin);
  }




}