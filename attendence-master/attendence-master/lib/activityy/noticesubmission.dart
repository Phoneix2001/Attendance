import 'package:attendence/activityy/first.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class notice extends StatefulWidget {
  const notice({Key? key}) : super(key: key);

  @override
  State<notice> createState() => _noticeState();
}

class _noticeState extends State<notice> {
  late String no;
  CollectionReference noticeboard =
      FirebaseFirestore.instance.collection('noticeboard');
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidden = true;
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField( controller: nameController,

                onChanged: (value) {
                  no = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter note here',
                  labelText:'enter note here',
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () async {
                  await noticeboard.add({'notice': no});Navigator.pop( context,"/Homie");
                },
                icon: Icon(Icons.addchart_rounded),
                label: Text('Submit')
            ,)
          ],
        ),
      ),
    );
  }
}
