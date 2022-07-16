import 'package:flutter/material.dart';

var reqlist = [
  'IELTS Score',
  'Letter of Recommendation',
  'Statement Of Purpose',
  'Good Academics Progress',
  'GRE/GMAT/SAT Score',
  'Related Projects',
  'Experience',
  'Certifications',
  'No Educational Gap',
  'Research Papers',
  'Extracurricular Activities'
];

class requirements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requirements"),
        backgroundColor: Colors.blueGrey.shade300,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          var sub = subtitle(i);
          return ListTile(
            title: Text(reqlist[i]),
            subtitle: sub,
            leading: Icon(Icons.shopping_bag_outlined),
          );
        },
        itemCount: reqlist.length,
      ),
    );
  }

  subtitle(int i) {
    if (i > 4)
      return Text("Mentioned in Resume");
    else if (i == 0)
      return Text("6.5 or Above");
    else if (i == 1)
      return Text("From School, Universities and Companies");
    else if (i == 3)
      return Text("Minimum 75%");
    else if (i == 4)
      return Text("Good Score boost your Selection Chances");
    else
      return Text("-");
  }
}
