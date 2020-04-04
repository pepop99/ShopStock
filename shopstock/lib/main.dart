import 'package:flutter/material.dart';
import 'package:shopstock/shopkeeperSignUp.dart';
import 'package:shopstock/languages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopStock',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(78, 80, 245, 1),
        accentColor: Color.fromRGBO(78, 80, 245, 1),
      ),
      home: Scaffold(body: languages()),
  //    home: shopKeeperSignIn(),

    );
  }
}
