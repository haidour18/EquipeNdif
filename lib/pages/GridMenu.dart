import 'package:equipendif/pages/Contact.dart';
import 'package:equipendif/pages/DeclarerBenne.dart';
import 'package:equipendif/pages/navigationbar.dart';
import 'package:flutter/material.dart';
class GridMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var color = 0xffFFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(top:70,left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 18,
        children: <Widget>[

     RaisedButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(
           builder: (context) => Bar()));
     },
     color: Colors.white,
       splashColor: Colors.green,

       child: Column(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(top:48.0),
           child: Image(
             image: AssetImage('assets/icontrash.png'),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top:10.0),
           child: Text(
             'Faire une déclaration',style: TextStyle(color:Color(0xff686868),fontSize: 16,fontWeight: FontWeight.w700),
           ),
         )
       ],
     ),),
          RaisedButton(onPressed: (){},
            color: Colors.white,
            splashColor: Colors.green,

            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:48.0),
                  child: Image(
                    image: AssetImage('assets/Historic.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text(
                    'Mes déclarations',style:TextStyle(color:Color(0xff686868),fontSize: 16,fontWeight: FontWeight.w700),)
                ),],
            ),),
          RaisedButton(onPressed: (){},
            color: Colors.white,
            splashColor: Colors.amberAccent,

            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:48.0),
                  child: Image(
                    image: AssetImage('assets/Profil.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text(
                    'Profil',style: TextStyle(color:Color(0xff686868),fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),),
          RaisedButton(onPressed: (

              ){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Bar()));
          },
            color: Colors.white,
            splashColor: Colors.amberAccent,

            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:48.0),
                  child: Image(
                    image: AssetImage('assets/Contact.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text(
                    'Contact',style: TextStyle(color:Color(0xff686868),fontSize: 16,fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),),
        ],),
     );



  }
}



