import 'package:flutter/material.dart';
class dreamcanada extends StatefulWidget {
  @override
  State<dreamcanada> createState() => _dreamcanadaState();
}

class _dreamcanadaState extends State<dreamcanada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0.0,
        shadowColor: Colors.white,
        title: Text("DREAMCANADA", style: TextStyle(color: Colors.black, fontSize: 40.0,
            fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
          elevation: 20.0,
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                minVerticalPadding: 20.0,
                title: Text("Find University", style: TextStyle(fontSize: 30.0, color: Colors.black),),
                onTap: () {},
              ),
              ListTile(
                minVerticalPadding: 20.0,
                title: Text("IELTS", style: TextStyle(fontSize: 30.0, color: Colors.black),),
                onTap:() {},
              ),
              ListTile(
                minVerticalPadding: 20.0,
                title: Text("Scholarships", style: TextStyle(fontSize: 30.0, color: Colors.black),),
                onTap: () {},
              )
            ],
          ),
        ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: GestureDetector(child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.1* MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(90.0), right: Radius.circular(90.0))),
                child: Center(
                  child: Text("Find your Dream university here",  style: TextStyle(
                      fontStyle: FontStyle.italic
                  ),),
                ),
              ),
                onTap: () {debugPrint("hjhjhj");},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 0.3*MediaQuery.of(context).size.width,
                    height: 0.2*MediaQuery.of(context).size.height,
                    color: Colors.grey.shade100,
                    child: Center(child: Column(children: [ Icon(Icons.currency_exchange, size: 50.0,),
                        Text("Business")],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 0.3*MediaQuery.of(context).size.width,
                    height: 0.2*MediaQuery.of(context).size.height,
                    color: Colors.grey.shade100,
                    child: Center(child: Column(children: [ Icon(Icons.engineering_outlined, size: 50.0,),
                      Text("Engineering")],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 0.3*MediaQuery.of(context).size.width,
                    height: 0.2*MediaQuery.of(context).size.height,
                    color: Colors.grey.shade100,
                    child: Center(child: Column(children: [ Icon(Icons.medical_services_outlined, size: 50.0,),
                      Text("Medical")],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 0.3*MediaQuery.of(context).size.width,
                    height: 0.2*MediaQuery.of(context).size.height,
                    color: Colors.grey.shade100,
                    child: Center(child: Column(children: [ Icon(Icons.balance_rounded, size: 50.0,),
                      Text("Law")],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,)),
                  ),
                )
              ],
            )
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.grey,onPressed: () {},child: Icon(Icons.chat),),
    );
  }
}

