import 'package:equipendif/pages/navigationbar.dart';
import 'package:flutter/material.dart';
import 'Declarations.dart';
import 'MyDrawer.dart';
import 'Notifications.dart';
import 'Profile2.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int _cIndex = 4;
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
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => Contact()));
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff73B650),
        centerTitle: true,
        title: Text('Contact'),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'Téléphone :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff5E646B)),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('+213 (0) 21 67 36 67'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xff73B650),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'Email :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff5E646B)),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      'contact@and.dz',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xff73B650),
                      child: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23.0, left: 13),
                    child: Text(
                      'Fax :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff5E646B)),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23.0),
                    child: Text('+213 (0) 21 67 38 90'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 14),
                    child: Text(
                      'Adresse :',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff5E646B),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 46.0),
                        child: Text('34, Rue des Fusillés, Mohamed Belouizdad'),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 2, right: 150.0, bottom: 10),
                        child: Text('Alger, 16000 Algérie.'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image(
                      image: AssetImage(
                        'assets/dqedcq.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Image(
                            image: AssetImage('assets/icon.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff73B650),
                            child: Icon(
                              Icons.web,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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
