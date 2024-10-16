import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey(Color color, int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num);
        },
        child: Text(""),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Phuc Ne"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.redAccent, 1),
            buildKey(Colors.blueAccent, 2),
            buildKey(Colors.greenAccent, 3),
            buildKey(Colors.yellowAccent, 4),
            buildKey(Colors.pinkAccent, 5),
            buildKey(Colors.purpleAccent, 6),
            buildKey(Colors.orangeAccent, 7),
          ],
        ),
      ),
    );
  }
}
