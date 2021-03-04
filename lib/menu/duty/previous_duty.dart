import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PreviousDuty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PreviousDutyState();
  }
}

class _PreviousDutyState extends State<PreviousDuty> {
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
                              margin: EdgeInsets.only(top: 5.0, left: 80.0, bottom: 5.0),
                              child: Text(
                                'Previous Duties',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30.0,
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
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('From',
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
                              onTap: () {
                                setState(() {
                                  _selectDate(context);
                                });
                              },
                            )
                        ),
                      ],
                    )
                ),
                Padding(padding: EdgeInsets.only(top: 20.0,bottom: 0.0, left: 10.0, right: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('To',
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
                              onTap: () {
                                setState(() {
                                  _selectDate(context);
                                });
                              },
                            )
                        ),
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(top: 25.0,bottom: 0.0, left: 10.0, right: 10.0),
                    child: Text(
                      'Previous Duty Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
                /*Padding(padding: EdgeInsets.only(top: 30.0, left: 110.0, right: 110.0),
                    child: RaisedButton(
                        elevation: 8.0,
                        child: Text(
                          'Relieved',
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
                )*/
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
  // todo: datePicker Function
  String tittle = 'Date Picker';
  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datepicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1947),
        lastDate: DateTime(2050),
        initialDatePickerMode: DatePickerMode.day,
        // todo: button color change and picked up color change
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              primaryColor: Color(0xFFC41A3B),
              accentColor: Color(0xFFC41A3B),
            ),
            child: child,
          );
        });
    if (_datepicker != null && _datepicker != _date)
      setState(() {
        _date = _datepicker;
        print(
          _date.toString(),
        );
      });
  }
  // todo: ImageAssets
  Widget buildNicLogo() {
    AssetImage assetImage = AssetImage('images/nic2_w.png');
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
