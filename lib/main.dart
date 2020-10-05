import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){

    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color , int soundNumber1}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber1);
        }, child: null,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red,soundNumber1:1 ),
              buildKey(color:Colors.orange,soundNumber1:2 ),
              buildKey(color:Colors.yellow,soundNumber1:3 ),
              buildKey(color:Colors.green,soundNumber1:4 ),
              buildKey(color:Colors.blue,soundNumber1:5 ),
              buildKey(color:Colors.indigo,soundNumber1:6 ),
              buildKey(color:Colors.purple,soundNumber1:7 ),
            ],
          ),
        ),
      ),
    );
  }
}
