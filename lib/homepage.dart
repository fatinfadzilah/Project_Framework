import 'package:flutter/material.dart';
import 'package:xylophone_flutter/contactus.dart';
import 'package:xylophone_flutter/main.dart';
import 'package:xylophone_flutter/notes.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }
  Future<bool?> _showExitDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
  }
  AlertDialog _buildExitDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Please confirm'),
      content: const Text('Do you want to exit the app?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text('Yes'),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => _onWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.red.shade50,
        appBar: AppBar(
          toolbarHeight: 40.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          backgroundColor: Colors.pinkAccent,
          title: Center(
            child: Text('Xylophone'),
          ),
        ), //AppBar
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage("assets/images/logo.png")),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 80,
                  child: RaisedButton(
                    elevation: 2,
                    highlightElevation: 8,
                    disabledElevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => XylophoneApp()),
                      );
                    },
                    color: Colors.pink[900],
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(28.0),),
                    child: Text(
                      'Xylophone Instrument',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Lato-Bold",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 80,
                  child: RaisedButton(
                    elevation: 2,
                    focusElevation: 4,
                    hoverElevation: 4,
                    highlightElevation: 8,
                    disabledElevation: 0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Notes()),
                      );
                    },
                    color: Colors.pink[900],
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(28.0),),
                    child: Text(
                      'Xylophone Notes ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Lato-Bold",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => contactpage()),
            ); // Ad Nd your onPressed code here!
          },
          backgroundColor: Colors.pink[800],
          child: const Icon(Icons.account_circle_sharp),
        ),
      ),
    );
  }
}

