import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

//void main()=> runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({Color? btncolor, required int noteNumber, String? name}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: btncolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(16),
        ),
        onPressed: () {
          playNote(noteNumber);
        },
        child: Text(
          name ?? "",
          style: const TextStyle(
              color: Color.fromARGB(255, 230, 151, 151), // #8B0000
              fontSize: 20.0,
              letterSpacing: 1.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(btncolor:const Color.fromARGB(255, 139, 0, 0), noteNumber: 1, name: "DO"),
              buildKey(btncolor:const Color.fromARGB(255, 255, 140, 0), noteNumber:2, name:"RE"),
              buildKey(btncolor:const Color.fromARGB(255, 255, 215, 0), noteNumber:3, name:"MI"),
              buildKey(btncolor:const Color.fromARGB(255, 0, 128, 0), noteNumber:4, name:"FA"),
              buildKey(btncolor:const Color.fromARGB(255, 0, 0, 205), noteNumber:5, name:"SOL"),
              buildKey(btncolor:const Color.fromARGB(255, 75, 0, 130), noteNumber:6, name:"LA"),
              buildKey(btncolor: const Color.fromARGB(255, 120, 20, 82), noteNumber:7, name:"SI"),
            ],
          ),
        ),
      ),
    );
  }
}
