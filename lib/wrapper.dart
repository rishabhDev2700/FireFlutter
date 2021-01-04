import 'package:fireflutter/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:fireflutter/models/user.dart';
import 'package:provider/provider.dart';
import 'package:fireflutter/Screens/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    print(user);
    if (user != null) {
      return Home();
    } else {
      return Login();
    }
  }
}
