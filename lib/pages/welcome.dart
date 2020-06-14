import 'package:flutter/material.dart';
import 'login.dart';
import 'welcome2.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {



  // to store nested tabs
// Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 168.0, bottom: 10),
            child: Text(
              'Commençons avec N’dif',
              style: TextStyle(
                  color: Color(0xff3A6A75),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Ndif une application qui vous aide à préserver votre environnement',
            style: TextStyle(
                color: Color(0xff3A6A75),
                fontWeight: FontWeight.normal,
                fontSize: 16),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
          Image(
            image: AssetImage('assets/Welcome.jpg'),
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
                padding: const EdgeInsets.only(left: 18.0, top: 20),
                child: Container(
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff73B650),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 20),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xffBDCDD1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 20),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xffBDCDD1),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 320, top: 70.0),
            child: Container(
              width: 80.0,
              height: 20,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Welcome2()
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
