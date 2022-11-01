// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../services.dart/chartsBuilder.dart';

class Habitspage extends StatefulWidget {
  const Habitspage({Key? key}) : super(key: key);

  @override
  State<Habitspage> createState() => _HabitspageState();
}

class _HabitspageState extends State<Habitspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              Image.asset('assets/HabitsPageBackground.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 140, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(children: const [
                    Text(
                      "Your Habits",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Use this to be inspired",
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
        Container(
          height: 513,
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 200,
                child: LineChartSample1(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: LineChartSample2(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: LineChartSample3(),
              )
            ],
          ),
        )
      ]),
    );
  }
}
