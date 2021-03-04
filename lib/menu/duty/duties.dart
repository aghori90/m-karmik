import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_karmik/pages/shared_service.dart';
import '../../pages/menu.dart';
import 'view.dart';
import 'joining.dart';
import 'relieving.dart';
import 'previous_duty.dart';
import 'joining_letter.dart';

class Duty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DutyState();
  }
}
class _DutyState extends State<Duty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ListView(
                children: <Widget>[
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
                                  'Duty',
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
                  // todo: card:3 => Joining
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Joining()));
                      },
                      child: Card(
                        // color: Colors.white,
                        color: Colors.deepOrange[400],
                        elevation: 8.0,
                        // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          children: <Widget>[
                            // buildNicBanner(),
                            // Center(child: buildNicLogo()),
                            Container(
                                margin: EdgeInsets.only(top: 12.0, left: 140.0, bottom: 10.0),
                                child: Text(
                                  'Joining',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // todo: card:4 => Relieving
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Relieving()));
                      },
                      child: Card(
                        // color: Colors.white,
                        color: Colors.deepOrange[400],
                        elevation: 8.0,
                        // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          children: <Widget>[
                            // buildNicBanner(),
                            // Center(child: buildNicLogo()),
                            Container(
                                margin: EdgeInsets.only(top: 12.0, left: 135.0, bottom: 10.0),
                                child: Text(
                                  'Relieving',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // todo: card:5 => Previous Duties
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PreviousDuty()));
                      },
                      child: Card(
                        // color: Colors.white,
                        color: Colors.deepOrange[400],
                        elevation: 8.0,
                        // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          children: <Widget>[
                            // buildNicBanner(),
                            // Center(child: buildNicLogo()),
                            Container(
                                margin: EdgeInsets.only(top: 12.0, left: 110.0, bottom: 10.0),
                                child: Text(
                                  'Previous Duties',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // todo: card:6 => joining Appointment Letter
                  Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => JoiningLetter()));
                      },
                      child: Card(
                        // color: Colors.white,
                        color: Colors.deepOrange[400],
                        elevation: 8.0,
                        // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          children: <Widget>[
                            // buildNicBanner(),
                            // Center(child: buildNicLogo()),
                            Container(
                                margin: EdgeInsets.only(top: 12.0, left: 70.0, bottom: 10.0),
                                child: Text(
                                  'Download Joining Letter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
      margin: EdgeInsets.only(left: 10.0,),
    );
  }
}