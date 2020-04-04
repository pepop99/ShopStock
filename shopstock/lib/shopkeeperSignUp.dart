import 'package:flutter/material.dart';

class shopKeeperSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Theme.of(context).primaryColor,
                      size: 130,
                    ),
                  ),
                ),
                Text(
                  "ShopStock",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Text(
                  "Shopkeeper Register",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
