import "dart:io";
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

/// This Widget is the main application widget.
class DeclarerBenne extends StatelessWidget {
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
  File _imageFile;
  final picker = ImagePicker();

  _openGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  _openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _imageFile = File(pickedFile.path);
    });
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
                      child: Text("Gallery"),
                      onTap: () {
                        _openGallery();
                      }),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        _openCamera();
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
    'Jamais',
    'Rarement',
    'Souvent',
    'Toujours',
  ];

  String _btn1SelectedVal = 'Jamais';

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Quelle est le type de votre déchet ?",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green[100], shape: BoxShape.circle),
                    child: Image.asset('assets/icons/dustbin_1.png'),
                  ),
                  Text(
                    'Gravats',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green[100], shape: BoxShape.circle),
                    child: Image.asset('assets/icons/can_4.png'),
                  ),
                  Text(
                    'Végétal',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green[100], shape: BoxShape.circle),
                    child: Image.asset('assets/icons/recycle_bin.png'),
                  ),
                  Text(
                    'Ménager',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green[100], shape: BoxShape.circle),
                    child: Image.asset('assets/icons/question-mark-128.png'),
                    // child: Text(
                    //   "?",
                    //   style: TextStyle(fontSize: 30),
                    // ),
                  ),
                  Text(
                    'Autres',
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Quelle est la nature du déchet ? ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: _radioValue1,
                onChanged: _handleRadioValueChange1,
              ),
              new Text(
                'Décharge',
                style: new TextStyle(fontSize: 16.0),
              ),
              new Radio(
                value: 1,
                groupValue: _radioValue1,
                onChanged: _handleRadioValueChange1,
              ),
              new Text(
                'Défaut de ramassage',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Text(
            "Quelle est la fréquence de passage du camion d'ordures dans votre quartier ? ",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Center(
            widthFactor: 2.0,
            child: DropdownButton<String>(
              // Must be one of items.value.
              value: _btn1SelectedVal,
              onChanged: (String newValue) {
                setState(() {
                  _btn1SelectedVal = newValue;
                });
              },
              items: this._dropDownMenuItems,
            ),
          ),
          RaisedButton(
            onPressed: () {
              _showChoiceDialog(context);
            },
            color: Colors.green,
            textColor: Colors.white,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Ajouter une photo',
                style: TextStyle(fontSize: 20),
              ),
            ),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          )
        ],
      ),
    );
  }
}
