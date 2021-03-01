import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JoiningLetter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _JoiningLetterState();
  }
}

class _JoiningLetterState extends State<JoiningLetter> {
  var _districts  = ['Ranchi', 'Gumla', 'Khunti'];
  var _currentItemSelected = null; // for dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: Text('m-Karmik App')
              // padding: const EdgeInsets.all(8.0), child: Text('m-Karmik App')
            ),
            Expanded(
              child: buildNicLogo(),
            ),
          ],
        ),
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
                // for image
                Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: GestureDetector(
                    onTap: () { Navigator.pop(context);},
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: buildJhrLogo(),),
                    ),
                  ),
                // ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
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
                              margin: EdgeInsets.only(top: 5.0, left: 150.0, bottom: 5.0),
                              child: Text(
                                'Ranchi',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: GestureDetector(
                    onTap: () { Navigator.pop(context);},
                    child: Card(
                      // color: Colors.white,
                      color: Colors.lightGreenAccent,
                      // elevation: 8.0,
                      // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                      margin: EdgeInsets.all(5.0),
                      child: Stack(
                        children: <Widget>[
                          // buildNicBanner(),
                          // Center(child: buildNicLogo()),
                          Container(
                              margin: EdgeInsets.only(top: 5.0, left: 150.0, bottom: 5.0),
                              child: Text(
                                'Ranchi',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('PIN No. :',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width:25.0 ), // for difference btn term & dd
                        /*Expanded(
                            child: Text('123456',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),*/
                        // second

                      ],
                    ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Officer Name :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Office Name :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Duty Type :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Duty Location :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Duty Address :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Shift :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // second

                    ],
                  ),
                ),
                // =============================
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('From :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                      // To Date
                      Expanded(
                        child: Text('To :',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width:25.0 ), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                    ],

                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );

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
      margin: EdgeInsets.only(left: 50.0, top: 18.0, bottom: 20.0),
    );
  }
  // todo: ImageAssets logo
  Widget buildJhrLogo() {
    AssetImage assetImage = AssetImage('images/jhr.png');
    Image image = Image(
      image: assetImage,
      width: 3000.0,
      height: 1500.0,
      alignment: Alignment.center,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
    );
  }
}