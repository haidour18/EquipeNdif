import 'package:flutter/material.dart';

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
  //Etat _character = Etat.inadaptee;
  int selectedEtat;
  int selectedNombrePassage;

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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Text(
              'Quel est l\'etat de la benne ?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 70,
                            padding: EdgeInsets.fromLTRB(30.0, 30, 30, 30),
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                shape: BoxShape.circle),
                            child: Image.asset(
                                'assets/icons/question-mark-128.png'),
                          ),
                          Text(
                            "360 litres",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                  new Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 70,
                            padding: EdgeInsets.fromLTRB(30.0, 30, 30, 30),
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                shape: BoxShape.circle),
                            child: Image.asset(
                                'assets/icons/question-mark-128.png'),
                          ),
                          Padding(padding: EdgeInsets.only(top: 0.0)),
                          Text(
                            "1000 litres",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                  new Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 70,
                            padding: EdgeInsets.fromLTRB(30.0, 30, 30, 30),
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                shape: BoxShape.circle),
                            child: Image.asset(
                                'assets/icons/question-mark-128.png'),
                          ),
                          Padding(padding: EdgeInsets.only(top: 0.0)),
                          Text(
                            "10 m3",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                  new Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 70,
                            padding: EdgeInsets.fromLTRB(30.0, 30, 30, 30),
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                shape: BoxShape.circle),
                            child: Image.asset(
                                'assets/icons/question-mark-128.png'),
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
                style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontWeight: FontWeight.bold),
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
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
