import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:shopstock/userselect.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool english = false;

  void _onEnglish(bool newValue) => setState(() {
        english = newValue;
      });

//  List<String> languages = ["English", "हिन्दी","मराठी","తెలుగు","മലയാളം"];
  Map<String, bool> langs = {
    "English": true,
    "हिन्दी": false,
    "मराठी": false,
    "తెలుగు": false,
    "മലയാളം": false,
  };
  bool _isChecked = true;
  String _currLang = "English";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Theme.of(context).primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 130,
                ),
              ),
            ),
            Text(
              "ShopStock",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              "Please Select your Preferred Language",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 500,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Column(
                      children:
//              Row(children: <Widget>[
//                new Checkbox(value: english, onChanged: _onEnglish),
//
//              ],),
                          langs.keys
                              .map((String t) => CheckboxListTile(
                                    title: new Text(t),
                                    value: langs[t],
                                    onChanged: (bool val) {
                                      setState(() {
                                        langs[t] = val;
                                      });
                                      langs[_currLang] = false;
                                      _currLang = t;
                                    },
                                  ))
                              .toList(),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> userSelect())),
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),

//          RaisedButton.icon(
//              color: Theme.of(context).primaryColor,
//              onPressed: () {},
//              icon: Icon(
//                Icons.location_on,
//                color: Colors.white,
//              ),
//              label: Text(
//                "Use your current location",
//                style: TextStyle(color: Colors.white),
//              )),
//          SizedBox(
//            height: 33,
//          ),
          ],
        ),
      ),
    );
  }
}
