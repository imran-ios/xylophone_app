// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:xylophone_app/musicplayer.dart';

void main() {
  runApp(XylophonePage());
}

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreateKey(soundNumber: 1, backgroundColor: Colors.blue.shade300),
              CreateKey(soundNumber: 2, backgroundColor: Colors.red.shade300),
              CreateKey(soundNumber: 3, backgroundColor: Colors.green.shade300),
              CreateKey(soundNumber: 4, backgroundColor: Colors.teal.shade300),
              CreateKey(soundNumber: 5, backgroundColor: Colors.amber.shade300),
              CreateKey(
                  soundNumber: 6, backgroundColor: Colors.deepOrange.shade300),
              CreateKey(
                  soundNumber: 7, backgroundColor: Colors.purple.shade300),
            ],
          ),
        ),
      ),
    );
  }

  Expanded CreateKey(
      {required int soundNumber, required Color backgroundColor}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        onPressed: () {
          MusicPlayer.playSound("note$soundNumber.wav");
        },
        child: const Text(""),
      ),
    );
  }
}
