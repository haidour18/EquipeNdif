import 'package:equipendif/pages/Acceuil.dart';
import 'package:equipendif/pages/Contact.dart';
import 'package:equipendif/pages/Inscription2.dart';
import 'package:equipendif/pages/ModifierProfile.dart';
import 'package:equipendif/pages/Notifications.dart';
import 'package:equipendif/pages/Profile.dart';
import 'package:equipendif/pages/Profile2.dart';
import 'package:equipendif/pages/home.dart';
import 'package:equipendif/pages/login.dart';
import 'package:equipendif/pages/navigationbar.dart';
import 'package:equipendif/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
