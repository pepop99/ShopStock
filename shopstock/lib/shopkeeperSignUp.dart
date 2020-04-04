import 'package:flutter/material.dart';

class shopKeeperSignIn extends StatefulWidget {
  @override
  _shopKeeperSignInState createState() => _shopKeeperSignInState();
}

class _shopKeeperSignInState extends State<shopKeeperSignIn> {
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

  Widget _buildShopName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Shop Name",
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
                  Icons.home,
                  color: Colors.black,
                ),
                hintText: 'Shop Name'),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileNo() {
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
                hintText: 'Mobile Number'),
          ),
        ),
      ],
    );
  }

  Widget _buildGSTID() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "GST ID",
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
                  Icons.apps,
                  color: Colors.black,
                ),
                hintText: 'GST ID'),
          ),
        ),
      ],
    );
  }

  List<String> _shoptype = ["Grocery", "Medical"];

  String _selectedshoptype;

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
                Column(
                  children: <Widget>[
                    _buildName(),
                    SizedBox(
                      height: 20,
                    ),
                    _buildShopName(),
                    SizedBox(
                      height: 20,
                    ),
                    _buildMobileNo(),
                    SizedBox(
                      height: 20,
                    ),
                    _buildGSTID(),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
//                Container(
//                  height: 50,
//                  width: 200,
//                  child: RaisedButton.icon(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10)),
//                    color: Theme.of(context).primaryColor,
//                    onPressed: () {},
//                    icon: Icon(
//                      Icons.location_on,
//                      color: Colors.white,
//                    ),
//                    label: Text(
//                      "Use Current Location",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  height: 30,
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Column(
//                      children: <Widget>[
//                        Text("Shop type"),
//                        SizedBox(
//                          height: 20,
//                        ),
//                        DropdownButton(
//                          items: _shoptype.map((shoptype) {
//                            return DropdownMenuItem(
//                              child: new Text(shoptype),
//                              value: shoptype,
//                            );
//                          }).toList(),
//                          onChanged: (newValue) {
//                            setState(() {
//                              _selectedshoptype = newValue;
//                            });
//                          },
//                          hint: Text("Please choose your college"),
//                          value: _selectedshoptype,
//                        ),
//                      ],
//                    )
//                  ],
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
