import 'package:flutter/material.dart';
import 'Contact.dart';
import 'Declarations.dart';
import 'MyDrawer.dart';
import 'Profile2.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _cIndex = 3;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
    switch (_cIndex) {
      case 0:
        print(0);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Declarations()));
        break;
      case 1:
        print(1);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Profile2()));
        break;
      case 3:
        print(2);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Notifications()));
        break;
      case 4:
        print(3);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Contact()));
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff73B650),
        title: Text('Notifications'),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 80,
              width: 100,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        child: Text(
                            'Votre déclaration  benne de l’adresse XXXX est'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          // color: Colors.green,
        ),
        mini: false,
        onPressed: () =>
            // Fluttertoast.showToast(msg: 'Dummy floating action button'),
            print("Dummy floating action button"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.green,
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("Déclarations"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profil"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_up),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Contact"),
          ),
        ],
        onTap: (index) {
          _incrementTab(index);
          print(index);
        },
        selectedItemColor: Colors.green,
      ),
    );
  }
}
