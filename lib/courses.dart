import 'package:flutter/material.dart';
var optlist=[
  ["Business","Engineering","Medical","Computer Science & IT"],
  [
    "Business Management is another highly in-demand amongst international students across the world. Business management courses in Canada for international students are offered under specializations like Accounting, Finance, and Project Management. However, the most preferred business management course by international students is MBA in Canada, MBA in Canada for International students requires students to appear in the entrance tests like GMAT and English Language Test to be considered for admission. The students who study MBA in Canada get global exposure and well-paying jobs abroad. They get to diversify their network and intensify their skill.",
    "An international student can apply for an engineering degree in Canada either at the undergraduate level or postgraduate level. The UG degree programme (BS) can be completed within a duration of four years while the postgraduate degree programme (MS) can be completed in two years. The best engineering degree course in Canada is Mechanical Engineering. Mechanical engineering provides ample opportunities for candidates to pursue a career in the manufacturing industry. Cities like Ontario and Quebec have maximum job options for people who hold a mechanical engineering degree. The other two popular engineering courses in Canada are bachelor of applied science in electrical engineering and civil engineering. Besides students can opt for specialised engineering degree courses in Canada that can be opted for are Computer Science, Data Science, Engineering Management, Chemical Engineering etc.",
    "Candidates who want to pursue a career in the field of healthcare and medicine can apply for the best medical courses in Canada after 12th. Bioinformatics. Pharmacy, Biotechnology, Biological Science. Nursing and Dentistry are some of the popular medical courses in Canada for international students. The pay scale of a professional in the field of medicine varies. It depends on the job roles, qualifications and skills of the candidate. The rising growth in demand for medical facilities has led to the growth of the health and medicine sector in Canada.",
    "Computer Science and IT courses in Canada are some of the best courses to study in Canada that offer bright career options for students. Bachelors in Computer Science and IT in Canada and a masters in computer science in Canada for international students are most sought after degrees. The Computer Science and IT course in Canada offers ample opportunities to candidates such as software development or IT project management in software companies and firms. The tech industry of Canada is well established. The Canadian government offers sponsorships to international students to study Computer Science and IT in Canada. Students who study computer science in Canada can. later on, apply for a work permit and choose to work in leading software firms in the country."
  ],
  [
    '33000 CAD',
    '50000 CAD',
    '44000 CAD',
    '55000 CAD'
  ],
  [
    "-> BBA -- 4 years\n-> Masters of Financial Economics -- 16 months\n-> MBA -- 20 months\n-> Executive MBA -- 20 months",
    "-> Bachelor of Applied Science in Civil Engineering -- 4 years\n-> BEng in Computer Engineering -- 4 years\n-> Bachelors in Mechanical Engineering -- 4 years\n-> Bachelor of Applied Science in Mechanical Engineering -- 4 years\n-> MEng in Mechanical Engineering -- 1-2 years",
    "-> Bachelor of Science in Pharmacy -- 4 years\n-> Bachelor of Science in Nursing -- 4 years\n-> Doctor of Medicine (MD) -- 3 years\n-> Bachelor of Science in Pharmaceutical Sciences -- 4 years",
    "-> Bachelor of Information Technology -- 1-2 years\n-> Bachelor of Computer Science -- 3-4 years\n-> B.Sc in Applied Computing -- 3-4 years\n-> B.Sc in Computer Science -- 4 years\n-> MS in Computer Science -- 1-2 years"
  ]
];
class courses extends StatelessWidget {
  final num;
  const courses(this.num);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(optlist[0][num]),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Text(optlist[1][num],style: TextStyle(
              fontSize: 20.0, fontStyle: FontStyle.italic,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Text("Average Salary : ${optlist[2][num]}",style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.w500,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Text("Some of the top courses of ${optlist[0][num]} are :\n",style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w600,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(optlist[3][num],style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w400,
            ),),
          ),
        ],
      ),  ),
    );
  }
}
