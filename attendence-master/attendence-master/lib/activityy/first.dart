import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime nt = DateTime.now();
  String todate =DateFormat('dd:MM:yyyy').format(DateTime.now());
  int counter = 0;
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
        body: Container(
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              //first container
              Expanded(
                  flex: 6,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                child: Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("image/college.jpg"),
                          ),
                        ))),
                        Expanded(
                          child: Container(
                              child: RichText(
                            textScaleFactor: 1.5,
                            text: TextSpan(
                                text: 'G.P.G.C',
                                children: <TextSpan>[
                                  TextSpan(text: 'Bilaspur')
                                ]),
                          )),
                        )
                      ],
                    ),
                  )),

              Expanded(
                  //second container
                  child: Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text('Notice Board :'),
                ),
              )),
              Expanded(
                  flex: 5, //third container
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(color: Colors.blueGrey,elevation: 25,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Center(
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection('noticeboard')
                                .snapshots(),
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return ListView(
                                children: snapshot.data!.docs.map((document) {
                                  return Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Card(elevation: 7,color: Colors.white,
                                      child: Container(
                                        child: Center(
                                          child: RichText(
                                            text: TextSpan(style: TextStyle(color: Colors.blueGrey),
                                                text: ('> ' + todate + ' : '  + document['notice'] + ' .')),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  //forth container
                  child: Container()),
              Expanded(
                  flex: 3, //fifth container
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/teacher's");
                                },
                                icon: Icon(Icons.account_circle),
                                label: Text("Teacher's login"),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightBlueAccent),
                                    textStyle: MaterialStateProperty.all(
                                        TextStyle(fontSize: 15)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/student");
                                },
                                icon: Icon(Icons.account_circle),
                                label: Text("Student's login"),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightBlueAccent),
                                    textStyle: MaterialStateProperty.all(
                                        TextStyle(fontSize: 15)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: //sixth container
                      Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 15),
                      child: SizedBox(
                        width: 500,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, "/semester");
                          },
                          icon: Icon(Icons.addchart_outlined),
                          label: Text("Question paper"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.lightBlueAccent),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 30)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
