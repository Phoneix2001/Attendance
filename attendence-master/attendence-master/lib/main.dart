import 'package:attendence/activityy/dailyattendence.dart';
import 'package:attendence/activityy/fifth.dart';
import 'package:attendence/activityy/noticesubmission.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:attendence/activityy/forth.dart';

import 'package:attendence/activityy/second.dart';
import 'package:attendence/activityy/third.dart';
import 'package:attendence/activityy/entrypage.dart';

import 'activityy/first.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:splash(),
    routes: {
      "/semester": (context) => no(),
      "/student": (context) => third(),
      "/teacher's": (context) => MyApp(),
      "/daily": (context) => Dailyattendence(),
      "/entry":(context) => entrypoint(),
      "/not":(context) =>notice(),
      "/homie":(context) => Home()
    },
  ));
}
