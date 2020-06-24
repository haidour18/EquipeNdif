import 'package:flutter/material.dart';

import 'Contact.dart';
import 'Declarations.dart';
import 'ModifierProfile.dart';
import 'MyDrawer.dart';
import 'Notifications.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  int _cIndex = 1;
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
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => Profile2()));
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff73B650),
        title: Text('Profile'),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'N' '' 'dif',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3A6A75),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Icon(
                      Icons.restore_from_trash,
                      color: Color(0xff3A6A75),
                      size: 36,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 270, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 70,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'douzi@gmail.com'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, right: 270, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Genre',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 70,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'Homme'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, right: 238, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Profession',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 70,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'Retraité'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, right: 168, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Wilaya de résidence ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 70,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'Adrar'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, right: 142, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Commune de résidence',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 80,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'Adrar'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, right: 257, bottom: 10),
                child: SizedBox(
                  child: Text(
                    'Langue',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 320,
                height: 80,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: (Colors.grey)),
                      ),
                      hintText: 'Français'),
                ),
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.only(left: 85, right: 85, bottom: 45),
              height: 92,
              width: 100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Modifier()));
                },
                shape: StadiumBorder(),
                color: Color(0xff73B650),
                child: Text(
                  'Modifier',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ))
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
