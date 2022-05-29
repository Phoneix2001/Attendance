import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class no extends StatefulWidget {
  const no({Key? key}) : super(key: key);

  @override
  State<no> createState() => _noState();
}

class _noState extends State<no> {
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
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('questionpaper').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(elevation: 10, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 4, 0, 4),
                          child: Text('Course-Code - Year'),
                        ),
                       SizedBox(width: 45),Text('Question Paper')],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: snapshot.data!.docs.map((document) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(elevation: 15,
                        color: Colors.lightBlueAccent,
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(document['code']),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Card(elevation: 10,
                                color: Colors.white,
                                child: Container(
                                  child: Center(
                                      child: InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        "CLick here to download",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    onTap: () => launch(document['image']),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
// this.initialLabelIndex = 0,