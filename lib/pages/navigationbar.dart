import 'package:equipendif/pages/DeclarerBenne.dart';
import 'package:flutter/material.dart';
import 'Declarations.dart';
import 'Profile.dart';
import 'Notifications.dart';
import 'Contact.dart';

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Declarations(),
    Profile(),
    Notifications(),
    Contact(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Declarations(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 25,
              ),
              backgroundColor: Color(0xff73B650),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DeclarerBenne()));
              }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0,
        child: Container(
          padding: EdgeInsets.only(left: 1, right: 8),
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Declarations(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.history,
                          size: 24.0,
                          color:
                              currentTab == 0 ? Color(0xff73B650) : Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 2),
                          child: Text(
                            'Declarations',
                            style: TextStyle(
                              fontSize: 12,
                              color: currentTab == 0
                                  ? Color(0xff73B650)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.person,
                            size: 24.0,
                            color: currentTab == 1
                                ? Color(0xff73B650)
                                : Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 2),
                          child: Text(
                            'Profil',
                            style: TextStyle(
                              fontSize: 12,
                              color: currentTab == 1
                                  ? Color(0xff73B650)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Notifications(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          size: 24.0,
                          color:
                              currentTab == 2 ? Color(0xff73B650) : Colors.grey,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 2
                                ? Color(0xff73B650)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Contact(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          size: 24.0,
                          color:
                              currentTab == 3 ? Color(0xff73B650) : Colors.grey,
                        ),
                        Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 3
                                ? Color(0xff73B650)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
