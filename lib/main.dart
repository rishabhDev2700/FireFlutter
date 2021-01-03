import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fireflutter/Screens/home.dart';
import 'package:fireflutter/Screens/login.dart';
import 'Screens/settings.dart';
import 'Screens/add_project.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TeamNet());
}

class TeamNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.deepPurple[700], primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
        "/settings": (context) => Settings(),
        "/add_project": (context) => AddProject()
      },
    );
  }
}
