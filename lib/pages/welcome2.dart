import 'package:equipendif/pages/welcome3.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Welcome2 extends StatefulWidget {
  @override
  _Welcome2State createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 168.0, bottom: 10),
            child: Text(
              'N’dif',
              style: TextStyle(
                  color: Color(0xff3A6A75),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Une application mobile qui vous permettra de  déclarer une benne ou un déchet rencontrés',
              style: TextStyle(
                  color: Color(0xff3A6A75),
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Image(
            image: AssetImage('assets/Welcome2.jpg'),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 80, left: 120, right: 0),
                      child: Container(
                        width: 180.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login()
                            ));
                          },
                          shape: StadiumBorder(),
                          splashColor: Colors.white,
                          color: Color(0xff73B650),
                          child: Text(
                            'Commencer',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 40),
                child: Container(
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff73B650),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 40),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xff73B650),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 40),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xffBDCDD1),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330, top: 50.0),
            child: Container(
              width: 80.0,
              height: 20,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Welcome3()
                  ));
                },
                child: Text(
                  'Suivant',
                  style: TextStyle(color: Color(0xff3A6A75), fontSize: 14.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
