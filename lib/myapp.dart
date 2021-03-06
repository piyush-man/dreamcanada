import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/courses.dart';
import 'package:untitled/ielts.dart';
import 'package:untitled/requirements.dart';
import 'package:untitled/scholarships.dart';
import 'package:untitled/search.dart';
import 'package:untitled/universities.dart';
import 'package:untitled/webview.dart';
import 'package:url_launcher/url_launcher.dart';

class dreamcanada extends StatefulWidget {
  @override
  State<dreamcanada> createState() => _dreamcanadaState();
}

var home = 0;
final formKey = GlobalKey<FormState>();
final formname = TextEditingController();
final formemail = TextEditingController();
final formcourse = TextEditingController();

class _dreamcanadaState extends State<dreamcanada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.white,
        title: Text(
          "DREAMCANADA",
          style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        elevation: 20.0,
        backgroundColor: Colors.blueGrey.shade100,
        child: ListView(
          padding: EdgeInsets.only(top: 60.0),
          children: [
            Image.asset("assets/images/canada.png", height: 150),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Requirements",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => requirements()),
                );
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Top Universities",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => universities()),
                );
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Scholarships",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => scholarships()),
                );
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "IELTS Prep",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ielts()),
                );
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Courses",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                setState(() {
                  home = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Get Updates",
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                setState(() {
                  home = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
                minVerticalPadding: 20.0,
                title: Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 30.0),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyWebView(
                          title: "Terms & Conditions",
                          selectedUrl:
                              "https://www.app-privacy-policy.com/live.php?token=eYXePb6Eqc0NYejx2eAE5uE5qdJVMceY")));
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 0.1 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(90.0),
                            right: Radius.circular(90.0))),
                    child: Center(
                      child: Text(
                        "Find your Dream university here",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate());
                },
              ),
            ),
            GestureDetector(
              onHorizontalDragEnd: (details) {
                var velo = details.velocity.pixelsPerSecond;
                if (velo.dx < 0) {
                  setState(() {
                    if (home < 2) {
                      home = home + 1;
                    } else {
                      home = 0;
                    }
                  });
                }
                ;
                if (velo.dx > 0) {
                  setState(() {
                    if (home > 0) {
                      home = home - 1;
                    } else {
                      home = 2;
                    }
                  });
                }
                ;
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 0.74 * MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  child: sethome()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () async {
          var url = Uri.parse("mailto:dreamcanada.app@gmail.com");
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Icon(Icons.chat),
      ),
    );
  }

  sethome() {
    if (home == 0) {
      return first();
    } else if (home == 1) {
      return second();
    } else if (home == 2) {
      return third();
    }
  }

  first() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
            child: Text(
          "COURSES",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const courses(0)),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.currency_exchange,
                      size: 50.0,
                    ),
                    Text("Business")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const courses(1)),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.engineering_outlined,
                      size: 50.0,
                    ),
                    Text("Engineering")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const courses(2)),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.medical_services_outlined,
                      size: 50.0,
                    ),
                    Text("Medical")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const courses(3)),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.laptop_chromebook_outlined,
                      size: 50.0,
                    ),
                    Text("CS & IT")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  home = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Container(
                    width: 0.02 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal,
                    ),
                    child: Text("")),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  home = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Container(
                    width: 0.02 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Text("")),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  home = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Container(
                    width: 0.02 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Text("")),
              ),
            ),
          ],
        )
      ],
    );
  }

  second() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
            child: Text(
          "INFORMATION",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => requirements()),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 50.0,
                    ),
                    Text("Requirements")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => universities()),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.account_balance_outlined,
                      size: 50.0,
                    ),
                    Text("Top Universities")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => scholarships()),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      size: 50.0,
                    ),
                    Text("Scholarships")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ielts()),
                );
              },
              child: Container(
                width: 0.3 * MediaQuery.of(context).size.width,
                height: 0.2 * MediaQuery.of(context).size.height,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.pending_actions_outlined,
                      size: 50.0,
                    ),
                    Text("IELTS")
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  home = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Container(
                    width: 0.02 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Text("")),
              ),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    home = 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Container(
                      width: 0.02 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                      ),
                      child: Text("")),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    home = 2;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Container(
                      width: 0.02 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                      child: Text("")),
                )),
          ],
        ),
      ],
    );
  }

  third() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
            child: Text(
          "GET UPDATES",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
        )),
        GestureDetector(
          onTap: () async {
            var url = Uri.parse("instagram://user?username=dreamcanada_app");
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Container(
              height: 50.0,
              width: 300.0,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                  child: Text(
                "Follow on Instagram",
                style: TextStyle(color: Colors.white),
              ))),
        ),
        SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 10.0),
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value.length < 2) {
                          return 'Too short to Proceed';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.face),
                        border: OutlineInputBorder(),
                        hintText: 'NAME',
                      ),
                      controller: formname,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 10.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!value.contains('@')) {
                          return 'Email is invalid';
                        }
                        if (!value.contains('.')) {
                          return 'Email is invalid';
                        }
                        if (!value.contains(RegExp(r'(\w+)'))) {
                          return 'Email is invalid';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        border: OutlineInputBorder(),
                        hintText: 'EMAIL',
                      ),
                      controller: formemail,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 10.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (value.length < 2) {
                          return 'Too short to Proceed';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.book_outlined),
                        border: OutlineInputBorder(),
                        hintText: 'COURSE',
                      ),
                      controller: formcourse,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.teal,
                    splashColor: Colors.greenAccent,
                    textColor: Colors.white,
                    elevation: 5.0,
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        String message;
                        var col;
                        try {
                          final collection =
                              FirebaseFirestore.instance.collection('feedback');
                          await collection.doc().set({
                            'Name': formname.text,
                            'Course': formcourse.text,
                            'Email': formemail.text,
                          });
                          message = 'Submitted';
                          col = Colors.teal;
                        } catch (e) {
                          message = 'Error!';
                          col = Colors.red;
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Submitting Data'),
                            backgroundColor: Colors.blueGrey,
                            duration: Duration(seconds: 1),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: col,
                            duration: Duration(seconds: 1),
                          ),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  home = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Container(
                    width: 0.02 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Text("")),
              ),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    home = 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Container(
                      width: 0.02 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                      child: Text("")),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    home = 2;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Container(
                      width: 0.02 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                      ),
                      child: Text("")),
                )),
          ],
        ),
      ],
    );
  }
}
