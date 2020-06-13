import 'package:flutter/material.dart';
class Welcome3 extends StatefulWidget {
  @override
  _Welcome3State createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Welcome3.jpg'),
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
                    margin: EdgeInsets.only(top:446),
                    child:   MaterialButton(onPressed: (){},
                      shape: StadiumBorder(),
                      minWidth: 40.0,
                      splashColor:Colors.white ,
                      color: Color(0xff73B650),
                      child: Text('Commencer',style: TextStyle(color: Colors.white,fontSize: 14.0),),

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

              ),),
          ],
        ),
      ),
    );
  }
}
