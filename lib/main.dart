import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: (){
                playSound();
                // final player = AudioPlayer();
                // player.setReleaseMode(ReleaseMode.stop);
                // player.setSource(AssetSource('note1.wav'));
                // player.play('assets/note1.wav');
              },
              child: Text('Hello'),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> playSound() async{
    String audioPath = 'note1.wav';
    await player.play(AssetSource(audioPath));
  }
}
