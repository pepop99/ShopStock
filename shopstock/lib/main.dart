import 'package:flutter/material.dart';
import 'package:shopstock/login.dart';
import 'package:shopstock/signin.dart';
import 'package:shopstock/userselect.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(78, 80, 245, 1),
        accentColor: Color.fromRGBO(78, 80, 245, 1),
      ),
//      home: Scaffold(body: signIn()),
      home: Scaffold(body: userSelect()),

    );
  }
}
