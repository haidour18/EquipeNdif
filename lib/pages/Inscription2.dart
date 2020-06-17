import 'package:equipendif/pages/welcome.dart';
import 'package:flutter/material.dart';

class Inscription2 extends StatefulWidget {
  @override
  _Inscription2State createState() => _Inscription2State();
}

class _Inscription2State extends State<Inscription2> {
  String _value = null;
  List<String> _values = new List<String>();
  String _value1 = null;
  List<String> _values1 = new List<String>();
  String _value2 = null;
  List<String> _values2 = new List<String>();
  String _value3 = null;
  List<String> _values3 = new List<String>();
  @override
  void initState() {
    _values.addAll(["Homme", "Femme"]);
    _value = _values.elementAt(0);
    _values3.addAll(["Adrar", "Ain el beida "]);
    _value3 = _values3.elementAt(0);
    _values1.addAll(["Retraité", "Enseignant"]);
    _value1 = _values1.elementAt(0);
    _values2.addAll(
        ["Adrar", "Chlef", "Laghouat", "Oum El Bouagi", "Batna", "Bejaia"]);
    _value2 = _values2.elementAt(0);
  }

  @override
  void _OnChange(String value) {
    setState(() {
      _value = value;
    });
  }

  void _OnChange1(String value1) {
    setState(() {
      _value1 = value1;
    });
  }

  void _OnChange2(String value2) {
    setState(() {
      _value2 = value2;
    });
  }

  void _OnChange3(String value3) {
    setState(() {
      _value3 = value3;
    });
  }

  @override
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Felicitations! '),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Votre compte est crée vous pouvez à tout moment modifiez vos informations en consultant votre profil '),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Continuer',
                style: TextStyle(color: Color(0xff73B650)),
              ),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 70,
                color: Color(0xff73B650),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top:11,left:130),
child: Text(
                        'Bienvenue dans Ndif',
                        textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 70.0),
                      child: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 90,
                    padding: EdgeInsets.only(top: 25, bottom: 0),
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
                    height: 90,
                    padding: EdgeInsets.only(top: 8, bottom: 0),
                    child: Icon(
                      Icons.restore_from_trash,
                      color: Color(0xff3A6A75),
                      size: 36,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  padding: EdgeInsets.only(top: 0),
                  width: 230,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, bottom: 5, right: 190),
                        child: SizedBox(
                          height: 18,
                          child: Text(
                            'Sexe',
                            style: TextStyle(
                                color: Color(0xff5E646B), fontSize: 18),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        child: new DropdownButtonFormField(
                          hint: Text('Homme'),
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          value: _value,
                          items: _values.map((String value) {
                            return new DropdownMenuItem(
                                value: value,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, right: 0),
                                  child: new Text(
                                    '${value}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (String value) {
                            _OnChange(value);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: (Colors.amber)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5, right: 140, top: 10),
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            'Profession',
                            style: TextStyle(
                                color: Color(0xff5E646B), fontSize: 18),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: new DropdownButtonFormField(
                          hint: Text('Enseignant'),
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          value: _value1,
                          items: _values1.map((String value1) {
                            return new DropdownMenuItem(
                                value: value1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, right: 0),
                                  child: new Text(
                                    '${value1}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (String value1) {
                            _OnChange1(value1);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: (Colors.amber)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5, right: 64, top: 10),
                        child: SizedBox(
                          child: Text(
                            'Wilaya de résidence',
                            style: TextStyle(
                                color: Color(0xff5E646B), fontSize: 18),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: new DropdownButtonFormField(
                          hint: Text('Adrar'),
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          value: _value2,
                          items: _values2.map((String value2) {
                            return new DropdownMenuItem(
                                value: value2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 0),
                                  child: new Text(
                                    '${value2}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (String value2) {
                            _OnChange2(value2);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: (Colors.amber)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5, right: 29, top: 10),
                        child: SizedBox(
                          child: Text(
                            'Commune de résidence',
                            style: TextStyle(
                                color: Color(0xff5E646B), fontSize: 18),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: new DropdownButtonFormField(
                          hint: Text('Adrar'),
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          value: _value3,
                          items: _values3.map((String value) {
                            return new DropdownMenuItem(
                                value: value,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 0),
                                  child: new Text(
                                    '${value}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (String value) {
                            _OnChange3(value);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: (Colors.amber)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 65,
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {
                    _showMyDialog();
                  },
                  shape: StadiumBorder(),
                  color: Color(0xff73B650),
                  child: Text(
                    'Valider',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330, top: 10.0),
                child: Container(
                  width: 80.0,
                  height: 20,
                  child: MaterialButton(
                    onPressed: () {
                      _showMyDialog();
                    },
                    child: Text(
                      'Passer',
                      style:
                          TextStyle(color: Color(0xff3A6A75), fontSize: 14.0),
                    ),
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
