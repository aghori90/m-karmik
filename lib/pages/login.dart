import '../pages/shared_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/api_service.dart';
import '../model/login_model.dart';
import '../pages/ProgressHUD.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  bool isApiCallProcess = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
    SharedService.isLoggedIn().then((value) {
      if (value) Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  // for progressHUD: for loader
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
    // Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 160, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).hintColor.withOpacity(0.2),
                          offset: Offset(0, 10),
                          blurRadius: 20)
                    ],
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                        /*Text(
                          "Login",
                          style: Theme.of(context).textTheme.headline2,
                        ),*/

                        // Email input form field
                        SizedBox(height: 20),
                        new TextFormField(
                          keyboardType: TextInputType.phone,
                          onSaved: (input) => loginRequestModel.mobile = input,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please Enter Mobile No.';
                            }
                            // todo: numbers only
                            if (!RegExp(r"^[0-9]+").hasMatch(value)) {
                              return 'Enter numbers only';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            hintText: "Mobile",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .accentColor
                                        .withOpacity(0.2))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).accentColor)),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // =====================================

                        SizedBox(height: 30),
                        // Login button
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 80),
                          onPressed: () {
                            if (validateAndSave()) {
                              // passing parameter for progress
                              setState(() {
                                isApiCallProcess = true;
                              });

                              // calling of the api part
                              APIService apiService = new APIService();
                              // if login is success then loader will be hide itself
                              apiService.login(loginRequestModel).then((value) {
                                print(value.mobile);
                                if (value != null) {
                                  setState(() {
                                    isApiCallProcess = false;
                                  });
                                  // response to the user received from the server
                                  if (value.mobile != null) {
                                    final snackBar = SnackBar(
                                        content: Text("Login Successful"));
                                    scaffoldKey.currentState
                                        .showSnackBar(snackBar);
                                    // calling the shared services and setting the login details
                                    SharedService.setLoginDetails(value);
                                    Navigator.of(context)
                                        .pushReplacementNamed('/home');
                                  } else {
                                    final snackBar =
                                        SnackBar(content: Text(value.name));
                                    scaffoldKey.currentState
                                        .showSnackBar(snackBar);
                                  }
                                }
                              });
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Theme.of(context).accentColor,
                          shape: StadiumBorder(),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // creating a method to validate data
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
