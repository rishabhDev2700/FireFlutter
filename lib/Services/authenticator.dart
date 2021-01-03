import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireflutter/models/user.dart';

class AuthService {
  //signin using email and password
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  Future signInEmail(String _email, String _password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      print("Sign-in Failed!!");
      return null;
    }
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
