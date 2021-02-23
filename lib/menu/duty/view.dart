import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewState();
  }
}

class _ViewState extends State<View> {
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
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
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
                              margin: EdgeInsets.only(top: 5.0, left: 134.0, bottom: 5.0),
                              child: Text(
                                'View',
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
}
