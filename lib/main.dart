import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
        ),
        body: Xylo(),
      ),
    );
  }
}

class Xylo extends StatefulWidget {
  @override
  State<Xylo> createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  void playSound(int num) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$num.wav"),
    );
  }

  Expanded createNewButton(int sound, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(sound);
          },
          child: Text(
            'Press Me',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        createNewButton(1, Colors.red),
        createNewButton(2, Colors.orange),
        createNewButton(3, Colors.yellow),
        createNewButton(4, Colors.green),
        createNewButton(5, Colors.teal),
        createNewButton(6, Colors.blue),
        createNewButton(7, Colors.purple),
      ],
    );
  }
}
