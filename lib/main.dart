import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY Routing app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
      ),
    );
  }


}
