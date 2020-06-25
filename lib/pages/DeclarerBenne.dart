import 'dart:io';

import 'package:equipendif/pages/MyDrawer.dart';
import 'package:equipendif/pages/ViewPhoto.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Contact.dart';
import 'Declarations.dart';
import 'Notifications.dart';
import 'Profile2.dart';

// void main() {
//   runApp(DeclarerBenne());
// }

class DeclarerBenne extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//enum Etat { casse, inadaptee, inexistante }

class _MyHomePageState extends State<MyHomePage> {
  File _imageFile;
  final picker = ImagePicker();

  _openGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _imageFile = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choisissez une source ! "),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.file_download,
                            color: Color(0xff727373),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Text("Gallery"),
                        ],
                      ),
                      onTap: () {
                        _openGallery(context);
                      }),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  GestureDetector(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.camera_alt,
                            color: Color(0xff727373),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Text("Camera"),
                        ],
                      ),
                      onTap: () {
                        _openCamera(context);
                      }),
                ],
              ),
            ),
          );
        });
  }

  int _cIndex = 2;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
    switch (_cIndex) {
      case 0:
        print(0);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Declarations()));
        break;
      case 1:
        print(1);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Profile2()));
        break;
      case 3:
        print(2);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Notifications()));
        break;
      case 4:
        print(3);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Contact()));
        break;

      default:
    }
  }

  //Etat _character = Etat.inadaptee;
  int selectedEtat;
  int selectedNombrePassage;
  int selected_type = -1;

  @override
  void initState() {
    super.initState();
    selectedEtat = 0;
    selectedNombrePassage = 0;
  }

  setSelectedEtat(int val) {
    setState(() {
      selectedEtat = val;
    });
  }

  setSelectedNombrePassage(int val) {
    setState(() {
      selectedNombrePassage = val;
    });
  }

  static const menuItems = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    'Je ne sais pas',
  ];

  String _btn1SelectedVal = '0';

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff686868),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    var _ajouterPhoto = RaisedButton(
      onPressed: () {
        _showChoiceDialog(context);
      },
      color: Colors.green,
      textColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          'Ajouter une photo',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
    );

    var _voirPhoto = Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ViewPhoto()));
          },
          color: Colors.green,
          textColor: Colors.white,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Afficher la photo',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        RaisedButton(
          onPressed: () {
            print("envoie du formulaire");
          },
          color: Colors.green,
          textColor: Colors.white,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Envoyer',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ],
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Declarer une benne'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 15, 10, 30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //verticalDirection: VerticalDirection.down,
            children: <Widget>[
              // Padding(padding: EdgeInsets.only(top: 5.0)),
              Text(
                'Quel est l\'etat de la benne ?',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff686868),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: selectedEtat,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedEtat(val);
                              },
                            ),
                            Text(
                              "Cassée",
                              textAlign: TextAlign.left,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                          ]),
                    ),
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: selectedEtat,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedEtat(val);
                              },
                            ),
                            Text("Inadaptée"),
                            Padding(padding: EdgeInsets.only(left: 13.0)),
                          ]),
                    ),
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: selectedEtat,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedEtat(val);
                              },
                            ),
                            Text("Inéxistante"),
                            Padding(padding: EdgeInsets.only(left: 0.0)),
                          ]),
                    )
                  ]),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  'Quelle est la capacité idéale à votre avis?',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff686868),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // print('hello');
                        setState(() {
                          selected_type = 0;
                        });
                        print(selected_type);
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (selected_type == 0)
                                ? Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green[600], width: 3),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/benne1.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                : Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      'assets/icons/benne1.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                            Text(
                              "360 litres",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('hello');
                        setState(() {
                          selected_type = 1;
                        });
                        print(selected_type);
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (selected_type == 1)
                                ? Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green[600], width: 3),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/bene2.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                : Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      'assets/icons/bene2.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                            Padding(padding: EdgeInsets.only(top: 0.0)),
                            Text(
                              "1000 litres",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('hello');
                        setState(() {
                          selected_type = 2;
                        });
                        print(selected_type);
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (selected_type == 2)
                                ? Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green[600], width: 3),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/benne3.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                : Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      'assets/icons/benne3.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                            Padding(padding: EdgeInsets.only(top: 0.0)),
                            Text(
                              "10 m3",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('hello');
                        setState(() {
                          selected_type = 3;
                        });
                        print(selected_type);
                      },
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            (selected_type == 3)
                                ? Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green[600], width: 3),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/question-mark-128.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                : Container(
                                    height: 70,
                                    padding:
                                        EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      'assets/icons/question-mark-128.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                            Text(
                              "Autres",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    ),
                  ]),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  'Combien de bennes estimez vous nécéssaires ?',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff686868),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: selectedNombrePassage,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedNombrePassage(val);
                              },
                            ),
                            Text(
                              "Un",
                              textAlign: TextAlign.left,
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                          ]),
                    ),
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: selectedNombrePassage,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedNombrePassage(val);
                              },
                            ),
                            Text("Deux"),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                          ]),
                    ),
                    new Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: selectedNombrePassage,
                              activeColor: Colors.green,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: (val) {
                                print("radio $val");
                                setSelectedNombrePassage(val);
                              },
                            ),
                            Text("Plus"),
                            Padding(padding: EdgeInsets.only(left: 0.0)),
                          ]),
                    )
                  ]),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Text(
                        "Quelle est la fréquence de passage du camion d'ordures dans votre quartier ? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff686868),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      // widthFactor: 2.0,
                      child: Container(
                        width: 200,
                        child: DropdownButton<String>(
                          // Must be one of items.value.
                          isExpanded: true,
                          value: _btn1SelectedVal,

                          onChanged: (String newValue) {
                            setState(() {
                              _btn1SelectedVal = newValue;
                            });
                          },
                          items: this._dropDownMenuItems,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              (_imageFile == null) ? _ajouterPhoto : _voirPhoto,
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          // color: Colors.green,
        ),
        mini: false,
        onPressed: () =>
            // Fluttertoast.showToast(msg: 'Dummy floating action button'),
            print("Dummy floating action button"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.green,
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("Déclarations"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profil"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_up),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Contact"),
          ),
        ],
        onTap: (index) {
          _incrementTab(index);
          print(index);
        },
        selectedItemColor: Colors.green,
      ),
    );
  }
}

/*ButtonBar(
  alignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
      Radio(
      value: 0,
      groupValue: seletedRadio,
      activeColor: Colors.green,
      onChanged: (val) {
        print("radio $val");
        setSelectedRadio(val);
      },
    ),
  ],
),*/
