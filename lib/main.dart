import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    void PlayButton(int n){
      final audioplayer = AudioCache();
      audioplayer.play('note$n.wav');
    }

    // ignore: non_constant_identifier_names
    Expanded BuildKey({Color color,int n}){
      return Expanded(
        child: FlatButton(
            color: color,
            onPressed: (){
              PlayButton(n);
            }
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color :Colors.blueGrey[700], n: 1),
              BuildKey(color :Colors.blueGrey[600], n: 2),
              BuildKey(color :Colors.blueGrey[500], n: 3),
              BuildKey(color :Colors.blueGrey[400], n: 4),
              BuildKey(color :Colors.blueGrey[300], n: 5),
              BuildKey(color :Colors.blueGrey[200], n: 6),
              BuildKey(color :Colors.blueGrey[100], n: 7)
            ],
          ),
        ),
      ),
    );
  }
}
