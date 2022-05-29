import 'package:attendence/activityy/dailyattendence.dart';
import 'package:attendence/activityy/fifth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:attendence/activityy/entrypage.dart';

class Auth {
  //1) Firebase  SignIn Using Email_Password Authentication...

  static Future signInWithEmail(context, String email, password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (email.isNotEmpty) {
        print("done");
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => entrypoint()));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            margin: const EdgeInsets.all(10),
            shape: const StadiumBorder(),
            duration: const Duration(milliseconds: 1500),
            behavior: SnackBarBehavior.floating,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome ${userCredential.user!.email}",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        print("error 53");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            margin: const EdgeInsets.all(10),
            shape: const StadiumBorder(),
            behavior: SnackBarBehavior.floating,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Unverified Email $email"),
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ],
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            margin: const EdgeInsets.all(10),
            shape: const StadiumBorder(),
            behavior: SnackBarBehavior.floating,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("No user found with email...\n$email"),
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ],
            ),
            backgroundColor: Colors.red,
          ),
        );
      } else if (e.code == 'wrong-password') {
        print("error 53");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            margin: const EdgeInsets.all(10),
            shape: const StadiumBorder(),
            duration: const Duration(milliseconds: 1500),
            behavior: SnackBarBehavior.floating,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Wrong Password"),
                Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
              ],
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
