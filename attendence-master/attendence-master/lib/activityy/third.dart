

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

bool desecending = false;
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
        stream:  FirebaseFirestore.instance.collection('attendencealldetails').orderBy('roll',descending: false).snapshots()
            ,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 54,
                  child: Card(
                    child: Container(
                      color: Color.alphaBlend(Colors.lightBlueAccent, Colors.white),
                      width: 12,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded( flex: 5,
                            child: Card(child: Container(alignment: Alignment.bottomLeft,
                                child: Center(child: Text(document['date'])))),
                          ),SizedBox(width: 20,),

                          Expanded(flex: 2,
                            child: Card(
                              child: Container(alignment: Alignment.center,
                                  child: Text(document['roll'])),
                            ),
                          ),SizedBox(width: 6,),

                          Expanded(flex: 3,
                            child: Card(
                              child: Container(alignment: Alignment.bottomRight,
                                child: Center(child: Text(document['status'])),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
