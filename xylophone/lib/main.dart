import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  player.play('note1.wav');
                },
                child: null,
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note2.wav');
                },
                child: null,
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note3.wav');
                },
                child: null,
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note4.wav');
                },
                child: null,
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note5.wav');
                },
                child: null,
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note6.wav');
                },
                child: null,
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note7.wav');
                },
                child: null,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
