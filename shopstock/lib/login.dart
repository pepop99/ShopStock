import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  Widget _buildNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Phone Number",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                hintText: 'Enter your registered mobile number'),
          ),
        ),
      ],
    );
  }

  Widget _buildOTP() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Password/OTP",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.add_to_home_screen,
                  color: Colors.black,
                ),
                hintText: 'Enter OTP Received'),
          ),
        ),
      ],
    );
  }

  Widget _OTPnotReceived() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('OTP not received'),
        child: Text(
          "Didn\'t receive an OTP?",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _orCreateAccount(context) {
    return GestureDetector(
      onTap: () => print('Sign Up pressed'),
      child: Container(
        height: 50,
        width: 200,
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Theme.of(context).primaryColor,
          child: Text(
            'Create Account',
            style: TextStyle(
                color: Colors.white, fontSize: 20,),
          ),
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
                  "Login To Account",
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
                _buildNumber(),
                SizedBox(
                  height: 30,
                ),
                _buildOTP(),
                _OTPnotReceived(),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Enter",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "--OR--",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    _orCreateAccount(context),
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
