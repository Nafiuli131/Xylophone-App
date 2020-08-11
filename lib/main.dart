import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void Playsound(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
   Expanded buildbutton({Color color,int soundnumber}){

    return Expanded(
      child:FlatButton(onPressed: (){


        Playsound(soundnumber);

      },
        color: color,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildbutton(color:Colors.red,soundnumber:1),
              buildbutton(color:Colors.deepOrangeAccent,soundnumber:2),
              buildbutton(color:Colors.yellow,soundnumber:3),
              buildbutton(color:Colors.green,soundnumber:4),
              buildbutton(color:Colors.teal,soundnumber:5),
              buildbutton(color:Colors.blue,soundnumber:6),
              buildbutton(color:Colors.deepPurpleAccent,soundnumber:7),
            ],
          ),
        ),

      ),
    );
  }
}
