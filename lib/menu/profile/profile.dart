import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_karmik/model/login_model.dart';
import 'package:m_karmik/model/profile_model.dart';
import 'package:m_karmik/pages/shared_service.dart';
import '../../pages/menu.dart';
import '../../api/api_service.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  profileResponse _profileResponse = new profileResponse();

  @override
  void initState() {
    // TODO: implement initState (setting and fetching data)
    super.initState();
    APIService().profile(StaticData.loginResponseModel.mobile).then((value) {
      setState(() {
        _profileResponse = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    LoginRequestModel loginRequestModel;
    //loginRequestModel.mobile="7633009330";
if(_profileResponse.pINNO==null)
  return Scaffold(
    appBar: appBar(),
    body: Center(
      child: CircularProgressIndicator(),
    ),
  );
    return Scaffold(
      appBar:appBar(),
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Card(
                        // color: Colors.white,
                        color: Colors.deepOrange,
                        elevation: 8.0,
                        // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          children: <Widget>[
                            // buildNicBanner(),
                            // Center(child: buildNicLogo()),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 5.0, left: 134.0, bottom: 5.0),
                                child: Text(
                                  'Profile',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
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
                            child: Text(_profileResponse.pINNO,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Name :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.name,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Designation :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.desig,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'DOB :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.dob,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Sex :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.sex,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Address :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.address,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Employee Id :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.address,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'MObile No. :',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // todo: creating a dropdown
                        Container(width: 25.0), // for difference btn term & dd
                        Expanded(
                          child: Text(_profileResponse.mobile,
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 0.0, left: 50.0, right: 30.0),
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
                          child: Text(_profileResponse.oFFNAME,
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
      margin: EdgeInsets.only(left: 10.0, top: 0.0, bottom: 0.0),
    );
  }

  Widget appBar(){
   return AppBar(
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
    );
  }
}
