import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_karmik/pages/shared_service.dart';
import 'package:m_karmik/model/login_model.dart';
import 'package:m_karmik/model/joining_model.dart';
import '../../api/api_service.dart';


class Joining extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _JoiningState();
  }
}

class _JoiningState extends State<Joining> {
  JoiningResponseModel _joiningResponseModel = new JoiningResponseModel();

  @override
  void initState() {
    // TODO: implement initState (setting and fetching data)
    super.initState();
    APIService().joining(StaticData.loginResponseModel.mobile).then((value) {
      setState(() {
        _joiningResponseModel = value;
      });
    });
  }

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
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: ListView(children: <Widget>[
                // for image
                Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: buildJhrLogo(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                              margin: EdgeInsets.only(
                                  top: 5.0, left: 150.0, bottom: 5.0),
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
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'PIN No. :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                            child: Text(_joiningResponseModel.pINNO,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Officer Name :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.officerName,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Office Name :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.officeName,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Duty Type :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.dutyType,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Duty Location :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.dutyLocation,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Duty Address :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.dutyAddress,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Shift :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.shift,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // second
                    ],
                  ),
                ),
                // =============================
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'From :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.dateFrom,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      /*Expanded(
                            child:   ,
                        ),*/
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 0.0, left: 10.0, right: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'To :',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
                      Expanded(
                        child: Text(_joiningResponseModel.dateTo,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // todo: creating a dropdown
                      Container(width: 25.0), // for difference btn term & dd
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
      margin: EdgeInsets.only(left: 10.0,),
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
