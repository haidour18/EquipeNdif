import 'package:flutter/material.dart';
import 'DeclarerDechet.dart';

/// This Widget is the main application widget.
class ViewPhoto extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  // static const String _text = 'Flutter Code Sample';
  // File _imageFile;
  // File filo;
  // const File _image;
  // ViewPhoto({Key key, @required this}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Voir photo'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Center(
          child: MyStatefulWidget(),
        ),
        // body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/elbiarmap.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Text("NOPE - Search pass file through navigator"),
    );
  }
}
