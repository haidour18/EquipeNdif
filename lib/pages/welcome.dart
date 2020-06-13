import 'package:flutter/material.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // Properties & Variables needed
  String _value = null;
  List<String> _values = new List<String>();
  @override
  void initState() {
    _values.addAll(["Français", "Anglais","Arabe"]);
    _value = _values.elementAt(0);
  }

  void _OnChange(String value) {
    setState(() {
      _value = value;
    });
  }
  // to store nested tabs
// Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Welcome.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Center(

              child: new Column(

                children: <Widget>[


                 Container(width: 180.0,
                      margin: EdgeInsets.only(top:440),
                      child:   MaterialButton(onPressed: (){},
                        shape: StadiumBorder(),
                        minWidth: 40.0,
                        splashColor:Colors.white ,
                        color: Colors.green,
                        child: Text('Continuer',style: TextStyle(color: Colors.white,fontSize: 14.0),),

                      ),
                    ),


                ],
              ),

            ),
     Container(width: 180.0,height: 50,
    margin: EdgeInsets.only(top: 138,left: 300),
    child:   MaterialButton(onPressed: (){},
    minWidth: 40.0,
    child: Text('Passer',style: TextStyle(color: Color(0xff3A6A75),fontSize: 14.0),),

    ),), ],
        ),

      ),
    );}
}
