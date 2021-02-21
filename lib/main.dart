import 'package:flutter/material.dart';
import 'package:m_karmik/login.dart';
// import 'login.dart';
// import 'otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Color darkBlue = Color.fromARGB(255, 5, 31, 56);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'm-Karmik app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: Login(),
    );
  }
}

