import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl/intl.dart';

class Dailyattendence extends StatefulWidget {
  const Dailyattendence({Key? key}) : super(key: key);

  @override
  State<Dailyattendence> createState() => _DailyattendenceState();
}

class _DailyattendenceState extends State<Dailyattendence> {
  CollectionReference attendencealldetail =
  FirebaseFirestore.instance.collection('attendencealldetails');
  DateTime nowt = DateTime.now();
  String formattodate = DateFormat('dd:MM:yyyy').format(DateTime.now());
  List<String> labels = ['Absent', 'Present', 'Leave'];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Container(
            child: Text(
              "Attendance (personalized for B.C.A)",
              style: TextStyle(fontFamily: "font/LeagueSpartan-Medium.ttf"),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 1"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                      labels: labels,
                      onToggle: (index) async {
                        var tello = labels[index!.toInt()];
                        await attendencealldetail.add({
                          'roll': '1',
                          'status': '$tello',
                          'date': formattodate
                        }).then((value) => print('user add'));
                      }, totalSwitches: 3,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 2"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '2',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 3"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '3',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 4"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '4',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 5"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '5',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 6"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '6',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 7"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '7',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 8"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '8',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 9"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '9',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 10"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '10',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 11"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '11',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 12"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '12',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 13"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '13',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 14"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '14',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 15"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '15',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 16"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '16',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 17"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '17',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 18"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '18',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 19"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '19',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 20"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '20',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 21"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '21',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 22"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '22',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 23"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '23',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 24"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '24',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 25"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '25',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 26"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '26',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 27"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '27',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 28"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '28',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 29"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '29',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 30"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '30',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 31"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '31',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 32"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '32',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 33"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '33',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 34"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '34',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 35"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '35',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 36"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '36',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 37"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '37',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 38"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '38',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 39"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '39',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 40"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '40',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 41"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '41',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 42"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '42',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 43"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '43',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 44"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '44',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 45"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '45',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 46"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '46',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 47"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '47',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 48"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '48',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 49"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '49',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        })
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(" Roll no. = 50"),
                    SizedBox(
                      height: 100,
                      width: 30,
                    ),
                    ToggleSwitch(
                        labels: labels,
                        totalSwitches: 3,
                        onToggle: (index) async {
                          var tello = labels[index!.toInt()];
                          await attendencealldetail.add({
                            'roll': '50',
                            'status': '$tello',
                            'date': formattodate
                          }).then((value) => print('user add'));
                        }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
