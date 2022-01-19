import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone_flutter/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          // create a new player
          // Audio cache is for local assets
          playSound(soundNumber);
        },
        child: Text(''),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 40.2,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 0.00,
          backgroundColor: Colors.pinkAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home_outlined),
          ),
          title: Text(
            "Xylophone Instrument",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.teal, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.blue.shade900, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.orange, soundNumber: 7),
              buildKey(color: Colors.pink, soundNumber: 8),
            ],
          ),
        ),
      ),
    );
  }
}
