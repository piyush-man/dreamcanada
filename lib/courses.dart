import 'package:flutter/material.dart';
var name=["Business","Engineering","Medical","Law"];
class courses extends StatelessWidget {
  final num;
  const courses(this.num);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name[num]),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade300,
      ),
    );
  }
}
