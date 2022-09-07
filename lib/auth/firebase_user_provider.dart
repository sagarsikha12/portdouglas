import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PortDouglasAppFirebaseUser {
  PortDouglasAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PortDouglasAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PortDouglasAppFirebaseUser> portDouglasAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PortDouglasAppFirebaseUser>(
            (user) => currentUser = PortDouglasAppFirebaseUser(user));
