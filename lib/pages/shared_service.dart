import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/login_model.dart';

// for login and logout
class SharedService {
  // step:1 method
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey('mobile'))
     StaticData.loginResponseModel = LoginResponseModel.fromJson(json.decode(prefs.getString('mobile')));
    // print(StaticData.loginResponseModel.mobile);
    return prefs.containsKey('mobile');
  }

  // step:2 method
  static Future<void> setLoginDetails(LoginResponseModel loginResponse) async {
    final prefs = await SharedPreferences.getInstance();

    // define the toJson method within LoginResponseModel within login_model.dart
    if(loginResponse == null) {
      return;
    }
    prefs.setString("mobile", jsonEncode(loginResponse.toJson()).toString());
  }

  // step:3 method
  static Future<bool> logout() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove('mobile');
  }

}
