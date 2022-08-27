import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   var player = AudioPlayer();
   void  playSound() async {
     await player.play(DeviceFileSource('assets/note1.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:SafeArea(
          child:Center(child: Column(
            children: [
              TextButton(onPressed: playSound, child: Text('Click me'))
            ],
          ))
        )
      )
    );
  }
}
