import 'package:equipendif/pages/Contact.dart';
import 'package:equipendif/pages/DeclarerBenne.dart';
import 'package:equipendif/pages/DeclarerDechet.dart';
import 'package:equipendif/pages/navigationbar.dart';
import 'package:flutter/material.dart';
import 'PositionCarte.dart';

class GridMenu extends StatelessWidget {
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choisissez le type de déclaration ",
              style: TextStyle(
                  color: Colors.green[800], fontWeight: FontWeight.w800),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Divider(
                    color: Colors.green[200],
                  ),
                  RaisedButton(
                    color: Colors.white,
                    splashColor: Colors.green,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PositionCarte(),
                        ),
                      );
                    },
                    // child: Text("Déclarer un déchet"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          padding: EdgeInsets.all(20.0),
                          // margin: EdgeInsets.all(15.0),
                          child: Image.asset(
                              "assets/icons/icon_awesome_trash.png"),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(right: 2),
                        // ),
                        Text(
                          "Déclarer un déchet",
                          style: TextStyle(
                            color: Color(0xff686868),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    // onTap: () {
                    //   print("Galllery");
                    //   // _openGallery();
                    // },
                  ),
                  // Divider(
                  //   color: Colors.green[200],
                  // ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                  ),
                  RaisedButton(
                    color: Colors.white,
                    splashColor: Colors.green,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DeclarerBenne(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 70,
                          padding: EdgeInsets.all(20.0),
                          // margin: EdgeInsets.all(15.0),
                          child: Image.asset("assets/icons/recycle_bin.png"),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(right: 15),
                        // ),
                        Text(
                          "Déclarer une benne",
                          style: TextStyle(
                            color: Color(0xff686868),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.green[200],
                  // ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var color = 0xffFFFFFF;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(top: 70, left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 18,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              _showChoiceDialog(context);
            },
            color: Colors.white,
            splashColor: Colors.green,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Image(
                    image: AssetImage('assets/icontrash.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Faire une déclaration',
                    style: TextStyle(
                      color: Color(0xff686868),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.white,
            splashColor: Colors.green,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Image(
                    image: AssetImage('assets/Historic.png'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Mes déclarations',
                      style: TextStyle(
                          color: Color(0xff686868),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.white,
            splashColor: Colors.amberAccent,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Image(
                    image: AssetImage('assets/Profil.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Profil',
                    style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Bar()));
            },
            color: Colors.white,
            splashColor: Colors.amberAccent,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Image(
                    image: AssetImage('assets/Contact.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
