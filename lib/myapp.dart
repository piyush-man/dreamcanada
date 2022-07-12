import 'package:flutter/material.dart';
import 'package:untitled/courses.dart';
import 'package:untitled/procedure.dart';
import 'package:untitled/requirements.dart';
import 'package:untitled/scholarships.dart';
import 'package:untitled/search.dart';
import 'package:untitled/universities.dart';

class dreamcanada extends StatefulWidget {
  @override
  State<dreamcanada> createState() => _dreamcanadaState();
}

var home = 0;
final formKey = GlobalKey<FormState>();

class _dreamcanadaState extends State<dreamcanada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
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
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Requirements",
                style: TextStyle(fontSize: 30.0, color: Colors.black),
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
                style: TextStyle(fontSize: 30.0, color: Colors.black),
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
                style: TextStyle(fontSize: 30.0, color: Colors.black),
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
                "Procedure",
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => procedure()),
                );
              },
            ),
            ListTile(
              minVerticalPadding: 20.0,
              title: Text(
                "Get Help !",
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: GestureDetector(
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
                onTap: () {
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate()
                  );
                },
              ),
            ),
            GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.delta.dx < 0) {
                  setState(() {
                    if (home < 2) {
                      home = home + 1;
                    } else {
                      home = 0;
                    }
                  });
                }
                ;
                if (details.delta.dx > 0) {
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
                  height: MediaQuery.of(context).size.height - 160.0,
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
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }

  sethome() {
    if (home == 0) {
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
                        Icons.balance_rounded,
                        size: 50.0,
                      ),
                      Text("Law")
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
                        color: Colors.white,
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
    } else if (home == 1) {
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
                    MaterialPageRoute(builder: (context) => procedure()),
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
                        Icons.screen_rotation_alt_outlined,
                        size: 50.0,
                      ),
                      Text("Procedure")
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
                          color: Colors.white,
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
    } else if (home == 2) {
      final formname = TextEditingController();
      final formemail = TextEditingController();
      final formcourse = TextEditingController();
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: Text(
            "GET UPDATES",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          )),
          Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'COURSE',
                      ),
                      controller: formcourse,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Submitting Data')),
                        );
                      }
                      ;
                      debugPrint(formname.text);
                      debugPrint(formemail.text);
                      debugPrint(formcourse.text);
                    },
                    child: const Text('Submit'),
                  ),
                ],
              )),
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
                          color: Colors.white,
                        ),
                        child: Text("")),
                  )),
            ],
          ),
        ],
      );
    }
  }
}
