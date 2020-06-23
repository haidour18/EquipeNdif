import 'package:flutter/material.dart';
import 'DeclarerDechet.dart';

/// This Widget is the main application widget.
class PositionCarte extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   centerTitle: true,
        //   backgroundColor: Colors.green,
        //   title: Text('Position'),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () => Navigator.pop(context, false),
        //   ),
        // ),
        // body: Center(
        //   child: MyStatefulWidget(),
        // ),
        body: MyStatefulWidget(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/elbiarmap.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
            child: RaisedButton(
              shape: CircleBorder(),
              onPressed: () {},
              color: Colors.green,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15.0),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: RaisedButton(
                    shape: CircleBorder(),
                    onPressed: () {},
                    color: Colors.green,
                    child: Icon(
                      Icons.gps_fixed,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 90.0),
                        child: Text(
                          "Quel est votre position ?",
                          style: TextStyle(
                            color: Color(0xff686868),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                        // margin: EdgeInsets.only(bottom: 10.0),
                        child: TextField(
                          cursorColor: Color(0xff3A6A75),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: (Color(0xffE2E6E6))),
                                  borderRadius: BorderRadius.circular(100)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffE2E6E6),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff727373),
                              ),
                              fillColor: Color(0xff3A6A75),
                              hintStyle: TextStyle(color: Color(0xffD5D5D5)),
                              hintText: "Veuillez régérencer votre position",
                              hoverColor: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DeclarerDechet()));
              },
              color: Colors.green,
              textColor: Colors.white,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Valider',
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
          ),
        ],
      ),
    );
  }
}
