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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 50.0),
                  child: Text(
                    "GET BEST IELTS/GRE STUDY MATERIAL @ JUST Rs.109",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 130.0,
                    width: 250.0,
                    child: Center(
                        child: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MyWebView(
                            title: 'Buy Study Material',
                            selectedUrl: 'https://pmny.in/1IfNqvxPtgB3')));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 80.0),
                  child: Text(
                    "You will get download link on email within 24 hours after successful transaction",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
