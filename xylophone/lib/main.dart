import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                child: Text(
                  'do',
                  style: TextStyle(
                      color: Color.fromARGB(255, 245, 208, 208) // #8B0000
                      ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 139, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(1);
                },
              ),
              TextButton(
                child: Text(
                  're',
                  style:
                      TextStyle(color: Color.fromARGB(255, 139, 0, 0) // #8B0000
                          ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 140, 0), // #FF8C00,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(2);
                },
              ),
              TextButton(
                child: Text(
                  'mi',
                  style:
                      TextStyle(color: Color.fromARGB(255, 139, 0, 0) // #8B0000
                          ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 215, 0), // #FFD700
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(3);
                },
              ),
              TextButton(
                child: Text(
                  'fa',
                  style:
                      TextStyle(color: Color.fromARGB(255, 139, 0, 0) // #8B0000
                          ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 128, 0), // #008000
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(4);
                },
              ),
              TextButton(
                child: Text(
                  'sol',
                  style:
                      TextStyle(color: Color.fromARGB(255, 139, 0, 0) // #8B0000
                          ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 0, 205), // #0000CD
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(5);
                },
              ),
              TextButton(
                child: Text(
                  'la',
                  style:
                      TextStyle(color: Color.fromARGB(255, 139, 0, 0) // #8B0000
                          ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 75, 0, 130), // #0000CD
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(6);
                },
              ),
              TextButton(
                child: Text(
                  'si',
                  style: TextStyle(
                      color: Color.fromARGB(255, 235, 149, 149) // #8B0000
                      ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 120, 20, 82), // #0000CD
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  playNote(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
