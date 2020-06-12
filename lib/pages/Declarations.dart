import 'package:flutter/material.dart';
class Declarations extends StatefulWidget {
  @override
  _DeclarationsState createState() => _DeclarationsState();
}

class _DeclarationsState extends State<Declarations> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  centerTitle:true ,
  backgroundColor: Colors.green,
  title: Text('Declarations'),),
);
}
}