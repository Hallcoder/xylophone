import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey(int noteNumber, MaterialStateProperty<Color> color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: ButtonStyle(
          backgroundColor: color,
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Doremi'),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKey(1, MaterialStateProperty.all<Color>(Colors.red)),
                buildKey(2, MaterialStateProperty.all<Color>(Colors.orange)),
                buildKey(3, MaterialStateProperty.all<Color>(Colors.yellow)),
                buildKey(4, MaterialStateProperty.all<Color>(Colors.green)),
                buildKey(5, MaterialStateProperty.all<Color>(Colors.blue)),
                buildKey(6, MaterialStateProperty.all<Color>(Colors.indigo)),
                buildKey(7, MaterialStateProperty.all<Color>(Colors.purple)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
