import 'package:flutter/material.dart';
import 'package:fireflutter/Services/authenticator.dart';

class Login extends StatelessWidget {
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AuthService _auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login / Register",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _mailController,
            decoration: InputDecoration(
                labelText: 'E-mail', prefixIcon: Icon(Icons.person)),
            maxLength: 50,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.security_outlined)),
            obscureText: true,
            maxLength: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                elevation: 6,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                onPressed: () async {
                  dynamic result = await _auth.signInEmail(
                      _mailController.text, _passwordController.text);
                  if (result != null) {
                    print("Signed in successfully");
                    Navigator.pushNamed(context, "/home");
                  } else {
                    print("Error Signing in");
                  }
                },
                child: Text("Login"),
              ),
              Icon(Icons.arrow_back),
              Icon(Icons.circle),
              Icon(Icons.arrow_forward),
              RaisedButton(
                  elevation: 6,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  onPressed: () {},
                  child: Text("Register"))
            ],
          ),
          RaisedButton(
              elevation: 12,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result != null) {
                  print("Signed in");
                  Navigator.pushNamed(context, "/home");
                } else {
                  print("Failed");
                }
              },
              child: Text("Sign-in Anonymously")),
        ],
      ),
    );
  }
}
