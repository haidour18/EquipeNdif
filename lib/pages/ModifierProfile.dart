import 'package:equipendif/pages/MyDrawer.dart';
import 'package:equipendif/pages/Profile.dart';
import 'package:flutter/material.dart';

import 'Profile2.dart';
class Modifier extends StatefulWidget {
  @override
  _ModifierState createState() => _ModifierState();
}

class _ModifierState extends State<Modifier> {
  String _value = null;
  List<String> _values = new List<String>();
  String _value1 = null;
  List<String> _values1 = new List<String>();
  String _value2 = null;
  List<String> _values2 = new List<String>();
  String _value3 = null;
  List<String> _values3 = new List<String>();
  String _value4 = null;
  List<String> _values4 = new List<String>();
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
    _values4.addAll(
        ["Français", "Anglais"]);
    _value4 = _values4.elementAt(0);
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
  void _OnChange4(String value3) {
    setState(() {
      _value4 = _value4;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff73B650),
        title: Text('Profile'),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[

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
                        padding: const EdgeInsets.only(top:20.0,right: 184,bottom: 10),
                        child: SizedBox(
                          child: Text('Email',style: TextStyle(fontSize:18, color: Color(0xff5E646B),),),
                        ),
                      ),
                      Container(
                        width: 320,
                        height: 70,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: (Colors.grey)),
                              ),
                              hintText: 'ga_douzi@esi.dz'),
                        ),
                      ),
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
                            bottom: 5, right: 70, top: 10),
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
                            bottom: 5, right: 39, top: 10),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5, right: 154, top: 10),
                        child: SizedBox(
                          child: Text(
                            'Langue',
                            style: TextStyle(
                                color: Color(0xff5E646B), fontSize: 18),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: new DropdownButtonFormField(
                          hint: Text('Français'),
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          value: _value4,
                          items: _values4.map((String value) {
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
                            _OnChange4(value);
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
                 width: 200,
                  height: 100,
                  padding: EdgeInsets.only(top:20,bottom: 40),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile2()));
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
                  ),),

            ],
          ),
        ],
      ),
    );
  }
}
