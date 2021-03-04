import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu.dart';

class Otp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpState();
  }
}

class _OtpState extends State<Otp> {
  var _formKey = GlobalKey<FormState>();
  String mobile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('m-Karmik App'),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 150),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(),
              child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(5),
                      ],
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
                      decoration: InputDecoration(
                          icon: Icon(Icons.dialpad),
                          errorStyle: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                          hintText: 'Enter OTP',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  // Expanded(
                  const SizedBox(height: 10),
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                      }
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only( top: 10.0, left: 25.0, bottom: 10.0, right: 25.0),
                      child: const Text('Submit', style: TextStyle(fontSize: 25)),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
