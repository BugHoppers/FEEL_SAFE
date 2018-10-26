import 'package:feel_safe/pages/createReport.dart';
import 'package:feel_safe/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:feel_safe/pages/login.dart';

Widget CustomDrawer(BuildContext context) {
  final GoogleSignIn googleSignin = GoogleSignIn();
  return Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
            title: Text("HomePage"),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            }),
        ListTile(
            title: Text("Report"),
            trailing: Icon(Icons.report),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => CreateReport()));
            }),
        ListTile(
          title: Text("Sign Out"),
          trailing: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.of(context).pop();
            googleSignin.signOut();
            print("User Signed out");
          },
        )
      ],
    ),
  );
}
