import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

var reqlist = [
  'IELTS Score',
  'Letter of Recommendation',
  'Statement Of Purpose',
  'Good Academics Progress',
  'GRE/GMAT/SAT Score',
  'CV/Resume',
  'Related Projects',
  'Experience',
  'Certifications',
  'No Educational Gap',
  'Research Papers',
  'Extracurricular Activities'
];

var showlist = [
  ['IELTS Score', 'LOR', 'SOP', 'Transcript', 'GRE Score', 'Resume'],
  [
    'assets/images/ielts.png',
    'assets/images/lor.jpg',
    'assets/images/sop.jpg',
    'assets/images/transcript.png',
    'assets/images/gre.jpg',
    'assets/images/resume.png'
  ]
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
          var trail = null;
          if (i < 6) trail = Icon(Icons.arrow_forward_outlined);
          return ListTile(
            title: Text(reqlist[i],style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: sub,
            trailing: trail,
            leading: Icon(Icons.shopping_bag_outlined),
            onTap: () {
              if (i < 6)
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => showreq(i)));
            },
          );
        },
        itemCount: reqlist.length,
      ),
    );
  }

  subtitle(int i) {
    if (i > 5)
      return Text("Mentioned in CV/Resume");
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

class showreq extends StatelessWidget {
  final j;
  const showreq(this.j);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample ${showlist[0][j]}"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: Container(
        child: InteractiveViewer(
          clipBehavior: Clip.none,
          panEnabled: true,
          minScale: 1.0,
          maxScale: 4.0,
          onInteractionStart: (details) {
            if (details.pointerCount < 2) return;
          },
          onInteractionUpdate: (details) {
            details.focalPoint;
          },
          child: Image.asset(
            showlist[1][j],
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
