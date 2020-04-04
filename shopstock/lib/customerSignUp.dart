import 'package:flutter/material.dart';
import 'package:shopstock/shoptypeselection.dart';

class customerSignUp extends StatelessWidget {
  Widget _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Full Name",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                hintText: 'Full Name'),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mobile Number",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.mode_comment,
                  color: Colors.black,
                ),
                hintText: 'Mobile Number'),
          ),
        ),
      ],
    );
  }

  Widget _buildShopName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Number of Fammily Members",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                hintText: 'Number of Family Members'),
          ),
        ),
      ],
    );
  }

  Widget _buildCreateAccountButton(context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 200,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Theme.of(context).primaryColor,
          child: Text(
            'Create Account',
            style: TextStyle(
              color: Colors.white, fontSize: 20,),
          ),
          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> shopTypeSelect())),
        ),
      ),
    );
  }
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
                  padding: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      color: Theme.of(context).primaryColor,
                      size: 40,
                    ),
                  ),
                ),
                Text(
                  "ShopStock",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Text(
                  "Customer Register",
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
                Column(
                  children: <Widget>[
                    _buildName(),
                    SizedBox(height: 50,),
                    _buildMobileNumber(),
                    SizedBox(height: 50,),
                    _buildShopName(),
                    SizedBox(height: 50,),
                    _buildCreateAccountButton(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
