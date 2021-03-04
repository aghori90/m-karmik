import 'package:m_karmik/model/profile_model.dart';
import 'package:m_karmik/model/joining_model.dart';

import '../model/user_model.dart';
import '../pages/shared_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';

// Step:1 checking login api
class APIService {
  // for: Login Api
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {

    String body = json.encode(requestModel);

    String url = "http://covidhr.ranchidegs.in/covidhr_api/sms.php";
  var login = {
    "Accept": "application/json, text/plain, */*",
    "Content-Type": "application/json;charset=utf-8",
  };
// print(body);


    final response = await http.post(url, body:body,headers: login

   );
    // print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body.toString());
      return LoginResponseModel.fromJson(
        // json.decode(response.body)[0],
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }

  // for: profile Api
  Future<profileResponse> profile(String mobile) async {
    var profile = {'mobile' : '$mobile'};

    String url  = "http://covidhr.ranchidegs.in/covidhr_api/profile.php";
    var login = {
      "Accept": "application/json, text/plain, */*",
      "Content-Type": "application/json;charset=utf-8",
    };
// print(body);
    final response = await http.post(url, body:json.encode(profile),headers: login

    );
    // print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body.toString());
      return profileResponse.fromJson(
        // json.decode(response.body)[0],
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }

  // For: joining Api
  Future<JoiningResponseModel> joining(String mobile) async {
    var joining = {'mobile' : '$mobile'};

    String url  = "http://covidhr.ranchidegs.in/covidhr_api/joining.php";
    var login = {
      "Accept": "application/json, text/plain, */*",
      "Content-Type": "application/json;charset=utf-8",
    };
// print(body);
    final response = await http.post(url, body:json.encode(joining),headers: login

    );
    // print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      print(response.body.toString());
      return JoiningResponseModel.fromJson(
        // json.decode(response.body)[0],
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }

}


