import 'package:equipendif/pages/welcome.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 700,
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 150),
                        child: Text(
                          'N' '' 'dif',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3A6A75),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 150,
                        ),
                        child: Icon(
                          Icons.restore_from_trash,
                          color: Color(0xff3A6A75),
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 320,
                    height: 100,
                    padding: EdgeInsets.only(top: 50),
                    child: TextField(
                      cursorColor: Color(0xff3A6A75),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: (Color(0xffE2E6E6))),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffE2E6E6),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(
                            Icons.call,
                            color: Color(0xff727373),
                          ),
                          fillColor: Color(0xff3A6A75),
                          hintStyle: TextStyle(color: Color(0xffD5D5D5)),
                          hintText: "Numéro de téléphone",
                          hoverColor: Color(0xff73B650)),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage('assets/google.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              'S’inscrire avec Google',
                              style: TextStyle(color: Color(0xffD5D5D5)),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      shape: StadiumBorder(),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Image(
                                image: AssetImage('assets/facebook.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 26.0),
                              child: Text(
                                'S’inscrire avec Facebook',
                                style: TextStyle(color: Color(0xffD5D5D5)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      shape: StadiumBorder(),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 65,
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: StadiumBorder(),
                      color: Color(0xff73B650),
                      child: Text(
                        'Valider',
                        style: TextStyle(color: Colors.white, fontSize: 16.0,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
