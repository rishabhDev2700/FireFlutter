import 'package:firebase_core/firebase_core.dart';
import 'package:fireflutter/Screens/login.dart';
import 'package:fireflutter/Services/authenticator.dart';
import 'package:fireflutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:fireflutter/Screens/home.dart';
import 'package:provider/provider.dart';
import 'Screens/settings.dart';
import 'Screens/add_project.dart';
import 'package:fireflutter/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TeamNet());
}

class TeamNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
            accentColor: Colors.deepPurple[700],
            primarySwatch: Colors.deepPurple),
        initialRoute: "/",
        routes: {
          "/": (context) => Wrapper(),
          "/home": (context) => Home(),
          "/settings": (context) => Settings(),
          "/add_project": (context) => AddProject(),
          "/login":(context) => Login(),
        },
      ),
    );
  }
}
