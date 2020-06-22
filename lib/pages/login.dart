import 'package:flutter/material.dart';
import 'Acceuil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
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
                padding: EdgeInsets.only(top: 90),
                child: TextField(
                  cursorColor: Color(0xff3A6A75),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: (Color(0xffE2E6E6))),
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
                      hoverColor: Colors.green),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  width: 180.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Acceuil(),
                        ),
                      );
                    },
                    shape: StadiumBorder(),
                    splashColor: Colors.white,
                    color: Color(0xff73B650),
                    child: Text(
                      'Se connecter',
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Ou se connecter avec',
                  style: TextStyle(color: Color(0xffAAAAAA)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Image(
                  image: AssetImage('assets/icons.png'),
                ),
              ),
              Container(
                width: 250.0,
                height: 30,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Créer un compte utilisateur ?',
                    style: TextStyle(color: Color(0xff3A6A75), fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
