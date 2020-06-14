import 'package:flutter/material.dart';

class Welcome3 extends StatefulWidget {
  @override
  _Welcome3State createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
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
              'Avec N’dif, vous pouvez effectuer une déclaration à tout moment  et en tout lieu',
              style: TextStyle(
                  color: Color(0xff3A6A75),
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          Image(
            image: AssetImage('assets/Welcome3.jpg'),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 120, right: 0),
                      child: Container(
                        width: 180.0,
                        child: MaterialButton(
                          onPressed: () {},
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
                  backgroundColor: Color(0xff73B650),
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
                onPressed: () {},
                child: Text(
                  'Passer',
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
