import 'package:flutter/material.dart';
import 'package:untitled/webview.dart';

class ielts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("IELTS PREP"),
    backgroundColor: Colors.blueGrey.shade300,
          centerTitle: true,
    ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text("GET BEST IELTS AND GRE/GMAT STUDY MATERIAL @ JUST Rs.99", style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            color: Colors.blueGrey
          ),),
        ),
          RaisedButton(
            color: Colors.blueGrey,
            textColor: Colors.white,
            elevation: 5.0,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MyWebView(title: 'Buy Study Material', selectedUrl: 'https://pmny.in/vr2jGfuT45i2')
              ));
          },
          child: Text("BUY NOW"),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text("You will get download link on email within 24 hours after successful transaction", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey
                ),),
              ),
        ]),
      ),
    );
  }
}
