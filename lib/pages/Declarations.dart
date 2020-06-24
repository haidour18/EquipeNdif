import 'package:flutter/material.dart';
import 'Contact.dart';
import 'MyDrawer.dart';
import 'Notifications.dart';
import 'Profile2.dart';

class Declarations extends StatefulWidget {
  @override
  _DeclarationsState createState() => _DeclarationsState();
}

class _DeclarationsState extends State<Declarations> {
  int _cIndex = 0;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
    switch (_cIndex) {
      case 0:
        print(0);
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => Declarations()));
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Declarations'),
      ),
      drawer: MyDrawer(),
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
