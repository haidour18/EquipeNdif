import 'package:equipendif/pages/navigationbar.dart';
import 'package:equipendif/pages/welcome3.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: Welcome3() ,
    ); }
}