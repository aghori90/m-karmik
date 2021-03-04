import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_karmik/pages/shared_service.dart';

class Joining extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _JoiningState();
  }
}

class _JoiningState extends State<Joining> {
  var _districts  = ['Ranchi', 'Gumla', 'Khunti'];
  var _currentItemSelected = null; // for dropdown

  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // title: Text('m-Karmik App'),
        title: Text(
          'm-Karmik App',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue),
        ),
        leading: buildNicLogo(),
        leadingWidth: 130.0,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                SharedService.logout().then((value) {
                  if (value)
                    Navigator.of(context).pushReplacementNamed('/login');
                });
              })
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: GestureDetector(
                    onTap: () { Navigator.pop(context);},
                    child: Card(
                      // color: Colors.white,
                      color: Colors.lightGreenAccent,
                      // elevation: 8.0,
                      // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                      margin: EdgeInsets.all(10.0),
                      child: Stack(
                        children: <Widget>[
                          // buildNicBanner(),
                          // Center(child: buildNicLogo()),
                          Container(
                              margin: EdgeInsets.only(top: 5.0, left: 110.0, bottom: 5.0),
                              child: Text(
                                'Joining',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Mobile app crash reporting and run time errors in a single view, give you a holistic overview of your application.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
                Form(
                  key: globalFormKey,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30.0,bottom: 0.0, left: 10.0, right: 10.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('Enter Mobile',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              // todo: creating a dropdown
                              Container(width:25.0 ), // for difference btn term & dd
                              Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
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
                                        labelText: 'Mobile',
                                        hintText: 'Mobile',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )),
                                  )
                              ),
                            ],
                          )
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0,bottom: 0.0, left: 10.0, right: 10.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('Select Place',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              // todo: creating a dropdown
                              Container(width:25.0 ), // for difference btn term & dd
                              Expanded(
                                  child: DropdownButton<String>(
                                    hint: Text("Select District"),
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 36,
                                    underline: SizedBox(),
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    items: _districts.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    value: _currentItemSelected,
                                    onChanged: (String newValueSelected) {
                                      // todo: code to be executed here when menu is selected
                                      _onDropDownItemSelected(newValueSelected); // go down for function
                                    },
                                  )
                              ),
                            ],
                          )
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0, left: 110.0, right: 110.0),
                          child: RaisedButton(
                              elevation: 8.0,
                              child: Text(
                                'Join',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              onPressed: (){
                                setState(() {
                                });
                              }
                          )
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );

  }
  // todo: function for dropdown: dist,blk,vill
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
  // todo: ImageAssets
  Widget buildNicLogo() {
    AssetImage assetImage = AssetImage('images/nic2.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(left: 10.0),
    );
  }
}
