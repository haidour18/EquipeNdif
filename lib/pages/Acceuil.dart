import 'package:equipendif/pages/GridMenu.dart';
import 'package:equipendif/pages/MyDrawer.dart';
import 'package:flutter/material.dart';
class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();

}



class _AcceuilState extends State<Acceuil> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
  backgroundColor: Color(0xff73B650),
  centerTitle: true,
),
        drawer: MyDrawer(


        ),
        body: Padding(

          padding: const EdgeInsets.only(top:0),
        child: Column(
          children: <Widget>[


            GridMenu(),
          ],
        ),
      )

    );
  }
}
