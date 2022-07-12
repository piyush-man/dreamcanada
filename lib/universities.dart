import 'package:flutter/material.dart';

var unilist=[['McGill University',
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
  'Lakehead University'],
  ['Montreal',
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
    'Thunder Bay']
];
class universities extends StatelessWidget {
  const universities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Universities"),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: ListView.builder(
        itemBuilder: (context,i){return ListTile(
          title: Text(unilist[0][i]),
          subtitle: Text(unilist[1][i]),
          leading: Icon(Icons.account_balance_outlined),
          trailing: Text("Rank: ${i+1}"),
        );},
        itemCount: unilist[0].length,
      ),
    );
  }
}

class unidetails extends StatelessWidget {
  final uniname;
  const unidetails(this.uniname);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade300,
        title: Text(uniname),
      ),
    );
  }
}



