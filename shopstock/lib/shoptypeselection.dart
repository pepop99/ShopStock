import 'package:flutter/material.dart';
import 'dart:developer';



class shopTypeSelect extends StatefulWidget {
  @override
  _shopTypeSelectState createState() => _shopTypeSelectState();
}

class _shopTypeSelectState extends State<shopTypeSelect> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Icon(
                  Icons.shopping_cart,
                  color: Color.fromRGBO(78, 80, 245, 1),
                  size: 40,
                ),
              ),
            ),
            Text(
              "ShopStock",
              style: TextStyle(
                  color: Color.fromRGBO(78, 80, 245, 1), fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Select your shop type",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonTheme(
                minWidth: 300,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/icons/grocery.png', height:100, width:120),
                          Text(
                            "GROCERY",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
//                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> customerSignUp())),
                      color: Color.fromRGBO(78, 80, 245, 1),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/icons/pharmacy.png', height:100, width:120),
                          Text(
                            "PHARMACY",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
//                      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> shopKeeperSignIn())),
                      color: Color.fromRGBO(78, 80, 245, 1),
                    ),
                  ],
                )
            ),
//
          ],
        ),
      ),
    );
  }
}
