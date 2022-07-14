import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/myapp.dart';

void main() {
  runApp(new MaterialApp(
      home: DisplayLogo()));
}
class DisplayLogo extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<DisplayLogo> {
  initState() {
    super.initState();
    ///add delay here
    Timer(Duration(seconds: 3), () {
      if(mounted)
        runApp(new MaterialApp(
            home: dreamcanada()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Image.asset("assets/images/canada.png",height: 300,width: 300,),
        ));
  }
}