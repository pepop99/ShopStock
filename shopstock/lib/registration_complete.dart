import 'package:flutter/material.dart';
import 'package:shopstock/login.dart';

class registration_complete extends StatefulWidget{
  @override
  registered createState() => registered();
}

// ignore: camel_case_types
class registered extends State<registration_complete> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Icon(
                  Icons.account_circle,
                  color: Color.fromRGBO(78, 80, 245, 1),
                  size: 100,
                ),
              ),
            ),
            Text(
              "Hi, Ramu!",
              style: TextStyle(
                  color: Color.fromRGBO(78, 80, 245, 1), fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Thank You for registering on ShopStock. You can now add information about your shop.",
              style: TextStyle(
                  color: Colors.black45, fontSize: 25),
            ),
            SizedBox(
              height: 100,
            ),
            ButtonTheme(
                minWidth: 300,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Column(
                        children: <Widget>[
//                          SizedBox(
//                            height: 20,
//                          ),
//                          Image.asset('assets/icons/customer.png', height:100, width:120),
                          Text(
                            "OK, Let's Start!",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      onPressed: (){},
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