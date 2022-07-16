import 'package:flutter/material.dart';

var scholarlist = [
  [
    [
      "\n-> Banting Postdoctoral Fellowships – ",
      "\n-> Canada Graduate Scholarships – Master’s Program – ",
      "\n-> IDRC Research Awards – ",
      "\n-> NSERC Postgraduate scholarships – ",
      "\n-> Organization of American States (OAS) Academic Scholarship Program – ",
      "\n-> Vanier Canada Graduate Scholarships Program – "
    ],
    [
      "\n-> Anne Vallee Ecological Fund – ",
      "\n-> Canada Memorial Scholarship – ",
      "\n-> Surfshark Privacy and Security Scholarship - ",
      "\n-> Trudeau Scholarships and Fellowships – "
    ],
    [
      "\n-> Carleton University Awards for International Students – ",
      "\n-> Concordia University International Undergraduate Awards – ",
      "\n-> Dalhousie University Scholarships – ",
      "\n-> Fairleigh Dickinson Scholarships for International Students – ",
      "\n-> HEC Montréal Scholarships – ",
      "\n-> International Student Scholarships at Humber College Canada – ",
      "\n-> McGill University Scholarships and Student Aid – ",
      "\n-> Queen’s University International Scholarships – ",
      "\n-> UBC International Leader of Tomorrow Award – ",
      "\n-> UBC Graduate Scholarships – ",
      "\n-> University of Alberta International Scholarships – ",
      "\n-> University of Calgary International Scholarships – ",
      "\n-> University of Manitoba – ",
      "\n-> University of Saskatchewan International Student Awards – ",
      "\n-> University of Toronto Ontario Graduate Scholarship – ",
      "\n-> University of Waterloo International Funding – ",
      "\n-> Simon Fraser University Financial Aid and Awards – ",
      "\n-> Western University International President's Entrance Scholarships – ",
      "\n-> York University International Student Program – "
    ]
  ],
  [
    [
      "Canadian government scholarships and fellowships offered to international students undertaking postgraduate study within the natural and social sciences or health research. ",
      "Scholarships for Canadian students enrolled on a master’s degree or PhD at a (CGS-M allocated) university in Canada. ",
      "Canadian government scholarships for students from developing countries to undertake a master’s or doctoral-level research degree at a recognized Canadian university.",
      "Various Canadian government scholarships, grants and awards available to outstanding students undertaking study in the natural sciences or engineering at an accredited Canadian university. Funded by the NSERC.",
      "Canadian government scholarships from the Organization of American States (OAS), open to graduate students from any OAS member state (including selected countries in Latin America and the Caribbean islands).",
      "Canadian government scholarships available to doctoral students internationally, to study in Canada at a participating university.",
    ],
    [
      "Scholarships for international students undertaking animal research at doctoral level at an accredited Canadian university in Québec or British Columbia.",
      "Full scholarships are available for British postgraduate students to study at any accredited Canadian higher education provider, covering tuition, airfares, accommodation and more. The 2019 round is now closed, check back later this year for the 2020 round.",
      "A 2,000 Dollars prize is available to a student currently enrolled in Canada or another study destination as a high school, undergraduate or graduate student. You will need to submit an essay to apply and the scholarship is open to all nationalities.",
      "The Trudeau Foundation offers a number of scholarships, fellowships and mentorships to international students at doctoral level undertaking study in Canada at selected institutions.",
    ],
    [
      "Scholarships to study in Canada at Carleton University, open to all graduate students, who are automatically considered for the awards upon application.",
      "Various scholarships for international students to study in Canada at Concordia University in Montréal, open to international students at undergraduate level.",
      "Scholarships for current and prospective international/domestic students of all levels studying at Dalhousie University in Halifax.",
      "Scholarships for international students of all levels undertaking study in Canada at Fairleigh Dickinson University in Vancouver.",
      "Various merit- and need-based Canadian scholarships for international students at HEC Montréal, including mobility scholarships for international students.",
      "A range of Canadian scholarships for international students at undergraduate level to study in Canada at Humber College in Toronto.",
      "Various funding opportunities, including the McGill Entrance Scholarship Program and the PBEEE - Quebec Merit Scholarship for Foreign Students, for international students enrolled in graduate and postdoctoral studies.",
      "A number of scholarships for international students to study in Canada at Queen’s University in Kingston, Ontario. Some awards solely open to students from India, Pakistan and the US.",
      "Scholarships are available ranging from CAD2,000 to full tuition to study at Quest University Canada, which all international students are eligible for.",
      "Merit-based Canadian scholarships to study at the University of British Columbia in Vancouver, open to undergraduate students who demonstrate leadership skills and exceptional academic achievement.",
      "A searchable database of scholarships for master's and PhD students at the University of British Columbia, including the university's four-year doctoral fellowships and Graduate Support Initiative.",
      "A range of scholarship options for international students to study at undergraduate/graduate level at the University of Alberta.",
      "A selection of scholarships for international students to study in Canada at the University of Calgary. Awards range from CAD500 to CAD60,000.",
      "Scholarships to study in Canada at the University of Manitoba, open to international undergraduates. The university’s Faculty of Graduate Studies lists scholarship options for international graduate students.",
      "Merit-based ‘excellence’ scholarships to study in Canada, for undergraduate international students at the University of Saskatchewan.",
      "Scholarships for domestic and international students to study at the University of Toronto’s School of Graduate Studies.",
      "A variety of Canadian scholarships on offer to international students undertaking a master’s degree or doctoral program at the University of Waterloo.",
      "A range of scholarships and other funding opportunities for domestic and international students currently studying or planning to study at Simon Fraser University.",
      "Various Canadian scholarships offered to international students undertaking study at Western University.",
      "York University offers a number of international scholarships for undergraduate students to study in Toronto.",
    ]
  ]
];

class scholarships extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scholarships"),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Text(
                "Canadian Government Scholarships : ",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][0],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child:
                  Text(scholarlist[1][0][0], style: TextStyle(fontSize: 20.0)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][1],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][0][1],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][2],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][0][2],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][3],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][0][3],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][4],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][0][4],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][0][5],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][0][5],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Text(
                "Non-Government Scholarships : ",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][1][0],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][1][0],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][1][1],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][1][1],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][1][2],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][1][2],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][1][3],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][1][3],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Text(
                "University Scholarships : ",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][0],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][0],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][1],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][1],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][2],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][2],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][3],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][3],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][4],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][4],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][5],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][5],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][6],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][6],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][7],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][7],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][8],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][8],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][9],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][9],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][10],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][10],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][11],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][11],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][12],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][12],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][13],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][13],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][14],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][14],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][15],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][15],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][16],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][16],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][17],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][17],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                scholarlist[0][2][18],
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: Text(
                scholarlist[1][2][18],
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
