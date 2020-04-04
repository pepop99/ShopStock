import 'package:flutter/material.dart';
import 'dart:developer';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool english = false;

  void _onEnglish(bool newValue) => setState((){
    english = newValue;
  });

//  List<String> languages = ["English", "हिन्दी","मराठी","తెలుగు","മലയാളം"];
  Map<String, bool> langs = {
  "English" : true,
  "हिन्दी" : false,
  "मराठी" : false,
  "తెలుగు" : false,
  "മലയാളം" : false,
  };
  bool _isChecked = true;
  String _currLang = "English";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Theme.of(context).primaryColor,
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
            ),
            textAlign: TextAlign.center,
          ),
          Card(
            color: Colors.white,
            child: Column(children:
//              Row(children: <Widget>[
//                new Checkbox(value: english, onChanged: _onEnglish),
//
//              ],),
              langs.keys.map((String t) => CheckboxListTile(
                title: new Text(t),
                value: langs[t],
                onChanged: (bool val) {
                  setState(() {
                    langs[t] = val;
                  });
                  langs[_currLang] = false;
                  _currLang = t;
                },
              )).toList()
            ),
          ),
        ],
      ),
    );
  }
}
