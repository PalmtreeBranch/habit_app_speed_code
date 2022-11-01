// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../services.dart/lists.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(padding: EdgeInsets.zero, children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              Image.asset('assets/progressPageBackground.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 140, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(children: const [
                    Text(
                      "Hey Hermano!",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Keep going champ!",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ]),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            // ignore: prefer_const_literals_to_create_immutables
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Top Habits This Week",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),

            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 1,
                  ),
                  title: Text(
                    "Drinking Water",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How good you've been at drinking water this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.local_drink)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.95,
                  ),
                  title: Text(
                    "Reading",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How good you've been at reading  this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.book)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.8,
                  ),
                  title: Text(
                    "Exercising",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How good you've been at exercising this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.sports_gymnastics)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.65,
                  ),
                  title: Text(
                    "Studying Spanish",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How good you've been at Studying Spanish this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.language)),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 15, 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Worst Habits This Week",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),

            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.12,
                  ),
                  title: Text(
                    "Coding",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How bad you've been at coding this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.computer)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.25,
                  ),
                  title: Text(
                    "Journaling",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How bad you've been at journaling this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.edit)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.33,
                  ),
                  title: Text(
                    "Cleaning",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How bad you've been at cleaning this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.cleaning_services_outlined)),
              Divider(),
              ListTile(
                  leading: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 7.5,
                    backgroundColor: Color.fromARGB(255, 192, 170, 250),
                    value: 0.33,
                  ),
                  title: Text(
                    "Waking Up Early",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "How bad you've been at waking up early this week",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                  ),
                  trailing: Icon(Icons.language)),
            ]),
          ),
        )
      ]),
    );
  }
}
