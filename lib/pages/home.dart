import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    image: AssetImage('assets/Splash_Validé.png'),
        fit: BoxFit.cover
  )
),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

    Center(

        child: Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: new Column(

          children: <Widget>[

            Text('Choisissez une langue ',style: TextStyle(fontSize: 14.0,
                fontWeight: FontWeight.w400,color:Color(0xffB2B2B2)),),
          new DropdownButton(

            hint: Text('Français'),
            iconSize: 20,
          style: TextStyle(color: Colors.grey),
            icon: Icon(Icons.language,color: Color(0xffB2B2B2),),
          value:_value,
          items: _values.map((String value) {
          return new DropdownMenuItem(value:value,
          child:new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('${value}',style: TextStyle(color: Colors.grey),),
              )
          ],
          )
          );
          }).toList(),
          onChanged: (String value){
          _OnChange(value);
          }
          ),

          ],
          ),
        ),
    ),
          ],
          ),
        ),
      ),
    );}
}
