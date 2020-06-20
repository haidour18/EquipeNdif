import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffB2B2B2),

                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
Text('Haidour Asmaa',style: TextStyle(fontSize: 16.0,
fontWeight: FontWeight.w600,color:Color(0xffB2B2B2))


                  ),
                  SizedBox(
                    child: Icon(Icons.card_giftcard,color:Color(0xff73B650),)
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(color: Colors.white),
          )
        ],
      ),
    );
  }
}
