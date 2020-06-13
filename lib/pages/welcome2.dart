import 'package:flutter/material.dart';
class Welcome2 extends StatefulWidget {
  @override
  _Welcome2State createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body:Container(
         decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage('assets/Welcome2.jpg'),
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
                       color: Colors.green,
                       child: Text('Commencer',style: TextStyle(color: Colors.white,fontSize: 14.0),),

                     ),
                   ),


                 ],
               ),

             ),
             ],
         ),
       ),

   );
  }
}
