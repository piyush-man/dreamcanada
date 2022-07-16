import 'package:flutter/material.dart';
import 'package:untitled/webview.dart';

var unilist = [
  [
    'McGill University',
    'University of Toronto',
    'University of British Columbia',
    'University of Alberta',
    'McMaster University',
    'University of Waterloo',
    'Western University',
    'University of Ottawa',
    'University of Calgary',
    'Queen\'s University at Kingston',
    'Dalhousie University',
    'Simon Fraser University',
    'University of Victoria',
    'Universite Laval',
    'York University',
    'University of Saskatchewan',
    'Cancordia University',
    'Universite du Quebec',
    'University of Guelph',
    'Carleton University',
    'University of Manitoba',
    'University of New Brunswick',
    'Memorial University of Newfoundland',
    'University of Windsor',
    'Toronto Metropolitan University',
    'Brock University',
    'University of Regina',
    'Lakehead University'
  ],
  [
    'Montreal',
    'Toronto',
    'Vancouver',
    'Alberta',
    'Hamilton',
    'Waterloo',
    'London',
    'Ottawa',
    'Calgary',
    'Kingston',
    'Halifax',
    'Burnaby',
    'Victoria',
    'Quebec',
    'Toronto',
    'Saskatoon',
    'Montreal',
    'Quebec',
    'Guelph',
    'Ottawa',
    'Winnipeg',
    'Fredericton',
    'St.John\'s',
    'Windsor',
    'Toronto',
    'St. Catharines',
    'Regina',
    'Thunder Bay'
  ],
  [
    'assets/images/p1.jpg',
    'assets/images/p2.jpg',
    'assets/images/p3.jpg',
    'assets/images/p4.jpg',
    'assets/images/p5.jpg',
    'assets/images/p6.jpg',
    'assets/images/p7.jpg',
    'assets/images/p8.jpg',
    'assets/images/p9.jpg',
    'assets/images/p10.jpg',
    'assets/images/p11.jpg',
    'assets/images/p12.jpg',
    'assets/images/p13.jpg',
    'assets/images/p14.jpg',
    'assets/images/p15.jpg',
    'assets/images/p16.jpg',
    'assets/images/p17.jpg',
    'assets/images/p18.jpg',
    'assets/images/p19.jpg',
    'assets/images/p20.jpg',
    'assets/images/p21.jpg',
    'assets/images/p22.jpg',
    'assets/images/p23.jpg',
    'assets/images/p24.jpg',
    'assets/images/p25.jpg',
    'assets/images/p26.jpg',
    'assets/images/p27.jpg',
    'assets/images/p28.jpg',
  ],
  [
    'https://www.mcgill.ca/',
    'https://www.utoronto.ca/',
    'https://www.ubc.ca/',
    'https://www.ualberta.ca/',
    'https://www.mcmaster.ca/',
    'https://uwaterloo.ca/',
    'https://www.uwo.ca/',
    'https://www2.uottawa.ca/en',
    'https://www.ucalgary.ca/',
    'https://www.queensu.ca/',
    'https://www.dal.ca/',
    'https://www.sfu.ca/',
    'https://www.uvic.ca/',
    'https://www.ulaval.ca/en',
    'https://www.yorku.ca/',
    'https://www.usask.ca/',
    'https://www.concordia.ca/',
    'https://www.uquebec.ca/',
    'https://www.uoguelph.ca/',
    'https://carleton.ca/',
    'https://umanitoba.ca/',
    'https://www.unb.ca/',
    'https://www.mun.ca/',
    'https://www.uwindsor.ca/',
    'https://www.torontomu.ca/',
    'https://brocku.ca/',
    'https://www.uregina.ca/',
    'https://www.lakeheadu.ca/'
  ],
  [
    '31',
    '34',
    '47',
    '110',
    '152',
    '154',
    '172',
    '237',
    '242',
    '246',
    '308',
    '328',
    '359',
    '433',
    '456',
    '473',
    '555',
    '575',
    '595',
    '625',
    '675',
    '725',
    '750',
    '775',
    '900',
    '1000',
    '1100',
    '1300',
  ],
  [
    '16',
    '18',
    '6',
    '6',
    '13',
    '22',
    '12',
    '17',
    '13',
    '8',
    '11',
    '21',
    '4',
    '10',
    '12',
    '5',
    '14',
    '17',
    '9',
    '14',
    '8',
    '6',
    '3',
    '15',
    '18',
    '15',
    '7',
    '16',
  ]
];

class universities extends StatelessWidget {
  const universities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Universities"),
        backgroundColor: Colors.blueGrey.shade300,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(unilist[0][i]),
            subtitle: Text(unilist[1][i]),
            leading: Icon(Icons.account_balance_outlined),
            trailing: Text("Rank: ${i + 1}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => unidetails(i)),
              );
            },
          );
        },
        itemCount: unilist[0].length,
      ),
    );
  }
}

class unidetails extends StatelessWidget {
  final i;
  const unidetails(this.i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade300,
        title: Text(unilist[0][i]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "${unilist[1][i]}, Canada",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Image.asset(unilist[2][i],
                width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.only(bottom: 26.0),
              child: Text(
                "World Rank : ${unilist[4][i]}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36.0),
              child: Text(
                "Tuition Fees/Yr : ${unilist[5][i]},00,000 INR\n(Approx)",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 130.0,
                width: 250.0,
                child: Center(
                    child: Text(
                  "KNOW MORE",
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
                        title: unilist[0][i], selectedUrl: unilist[3][i])));
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: Text(
                "Actual Expenses = Tuition Fees + Other University Charges + Living Expenses",
                style: TextStyle(
                  fontSize: 10.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
