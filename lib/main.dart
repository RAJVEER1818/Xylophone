import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());//works only when single line of code

class XylophoneApp extends StatelessWidget {

  void playsound(int soundnumber){
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundnumber.wav');
  }

  Expanded buildkey(Color color,int k){
    return Expanded(
      child: TextButton(
        //color: Colors.red,
        onPressed: () {
          playsound(k);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
        ),
        child: Text('Click ME'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
              buildkey(Colors.red,1),
              buildkey(Colors.yellow,2),
              buildkey(Colors.green,3),
              buildkey(Colors.teal,4),
              buildkey(Colors.orange,5),
              buildkey(Colors.purple,6),
              buildkey(Colors.blue,7),
            ],
          ),
        ),
      ),
    );
  }
}
