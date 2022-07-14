import 'package:flutter/material.dart';
var reqlist=['IELTS Score',
  'Letter of Recommendation',
  'Statement Of Purpose',
  'Academics Progress',
  'GRE Score',
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
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Some of the requirements that will definitely"
              " boost your admission chances to Top Universities are:",style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.bold
              ),),
            ),
          ),
        Container(
          height: 0.76*MediaQuery.of(context).size.height,
          child: ListView.builder(
          itemBuilder: (context,i){return ListTile(
            title: Text(reqlist[i]),
            leading: Icon(Icons.shopping_bag_outlined),
            onTap: (){},
          );},
          itemCount: reqlist.length,
      ),
        ),])
    );
  }
}
