import 'package:attendence/activityy/dailyattendence.dart';
import 'package:attendence/activityy/noticesubmission.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class entrypoint extends StatefulWidget {
  const entrypoint({Key? key}) : super(key: key);

  @override
  State<entrypoint> createState() => _entrypointState();
}

class _entrypointState extends State<entrypoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Attendance (personalized for B.C.A)",
            style: TextStyle(fontFamily: "font/LeagueSpartan-Medium.ttf"),
          ),
        ),
        body: Column(
          children: <Widget>[SizedBox(height: 250,),
            Center(
              child: Container(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Dailyattendence()));
                  },
                  icon: Icon(Icons.post_add),
                  label: Text('Take Attendance Here'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 25)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => notice()));
                  },
                  icon: Icon(Icons.post_add),
                  label: Text('Add Notice Here'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 30)),
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(18.0)))),
                ))
          ],
        ));
  }
}
