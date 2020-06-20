import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff73B650),
        title: Text('Notifications'),

      ),
      drawer: MyDrawer(),
      body: ListView(

        children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(

             height: 80,
             width: 100,
             color: Colors.white,
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(


              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(


              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(


              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        child: Text(
                          'Votre déclaration  benne de l’adresse XXXX est'
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
