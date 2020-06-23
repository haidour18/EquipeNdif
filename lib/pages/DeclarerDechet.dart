import "dart:io";
import 'package:equipendif/pages/MyDrawer.dart';
import 'package:equipendif/pages/ViewPhoto.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:equipendif/pages/ViewPhoto.dart';
// import 'package:image_picker/image_picker.dart';

/// This Widget is the main application widget.
class DeclarerDechet extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Declarer un déchet'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selected_type = -1;

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

  // const Widget buttons =

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

  int _radioValue1 = -1;
  int correctScore = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
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
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Quelle est le type de votre déchet ?",
                  style: TextStyle(
                    color: Color(0xff686868),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        children: <Widget>[
                          (selected_type == 0)
                              ? Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green[600], width: 3),
                                  ),
                                  child:
                                      Image.asset('assets/icons/dustbin_1.png'),
                                )
                              : Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    shape: BoxShape.circle,
                                    // border: Border.all(
                                    //     color: Colors.green[600], width: 3),
                                  ),
                                  child:
                                      Image.asset('assets/icons/dustbin_1.png'),
                                ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                          ),
                          Text(
                            'Gravats',
                            style: TextStyle(
                              color: Color(0xff686868),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_type = 1;
                        });
                        print(selected_type);
                      },
                      child: Column(
                        children: <Widget>[
                          (selected_type == 1)
                              ? Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green[600], width: 3),
                                  ),
                                  child: Image.asset('assets/icons/can_4.png'),
                                )
                              : Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle),
                                  child: Image.asset('assets/icons/can_4.png'),
                                ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                          ),
                          Text(
                            'Végétal',
                            style: TextStyle(
                              color: Color(0xff686868),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_type = 2;
                        });
                        print(selected_type);
                      },
                      child: Column(
                        children: <Widget>[
                          (selected_type == 2)
                              ? Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green[600], width: 3),
                                  ),
                                  child: Image.asset(
                                      'assets/icons/recycle_bin.png'),
                                )
                              : Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                      'assets/icons/recycle_bin.png'),
                                ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                          ),
                          Text(
                            'Ménager',
                            style: TextStyle(
                              color: Color(0xff686868),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_type = 3;
                        });
                        print(selected_type);
                      },
                      child: Column(
                        children: <Widget>[
                          (selected_type == 3)
                              ? Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.green[600], width: 3)),
                                  child: Image.asset(
                                      'assets/icons/question-mark-128.png'),
                                  // child: Text(
                                  //   "?",
                                  //   style: TextStyle(fontSize: 30),
                                  // ),
                                )
                              : Container(
                                  height: 90,
                                  padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                      'assets/icons/question-mark-128.png'),
                                  // child: Text(
                                  //   "?",
                                  //   style: TextStyle(fontSize: 30),
                                  // ),
                                ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                          ),
                          Text(
                            'Autres',
                            style: TextStyle(
                              color: Color(0xff686868),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Quelle est la nature du déchet ? ",
                  style: TextStyle(
                    color: Color(0xff686868),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Radio(
                      value: 0,
                      activeColor: Colors.green,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Décharge',
                      // style: new TextStyle(fontSize: 16.0),
                      style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    new Radio(
                      value: 1,
                      activeColor: Colors.green,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Défaut de ramassage',
                      // style: new TextStyle(
                      //   fontSize: 16.0,
                      // ),
                      style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Quelle est la fréquence de passage du camion d'ordures dans votre quartier ? ",
                  style: TextStyle(
                    color: Color(0xff686868),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
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
          Padding(
            padding: EdgeInsets.only(bottom: 2.0),
          ),
        ],
      ),
    );
  }
}
