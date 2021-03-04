// step:3
class LoginResponseModel {
  // taking parameters

  String name;
  String PIN_NO;
  String mobile;


  // step:4
  LoginResponseModel({ this.name, this.PIN_NO, this.mobile});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      name: json["name"],
      PIN_NO: json["PIN_NO"],
      mobile: json["mobile"],
    );
  }

  // linking from the shared_services.dart for storing purposes
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['PIN_NO'] = this.PIN_NO;
    data['mobile'] = this.mobile;
    return data;
  }

}
// step:1
class LoginRequestModel {
  // taking two parameters
  String mobile;
  // String password;

  // constructor
  LoginRequestModel({
    this.mobile,
    // this.password,
  });

  // step:2
  // create a method of to jason using map
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'mobile': mobile.trim(),
      // 'password': password.trim(),
    };
    return map;
  }
}

//  creating staticData to check login for all time
class StaticData{
  static LoginResponseModel loginResponseModel;
}

