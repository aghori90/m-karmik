import 'package:flutter/material.dart';
import 'pages/menu.dart';
import 'pages/login.dart';
import 'pages/shared_service.dart';

Widget _defaultHome = new Login();

// checking weather user is loggedIn or not
//on that basis redirection of page will be done
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set default home.

  // Get result of the login function.
  bool _isLoggedIn = await SharedService.isLoggedIn();
  if (_isLoggedIn) {
    _defaultHome = new Login();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 10,
          foregroundColor: Colors.black,
        ),
        accentColor: Colors.lightBlueAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.white60),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.white60,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        '/home': (BuildContext context) => new Menu(),
        '/login': (BuildContext context) => new Login()
      },
    );
  }
}
