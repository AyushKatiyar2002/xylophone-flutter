import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                fontFamily: 'Shadows',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(1);
                  },
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(2);
                  },
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(3);
                  },
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(4);
                  },
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(5);
                  },
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(6);
                  },
                  color: Colors.indigo,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(7);
                  },
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
