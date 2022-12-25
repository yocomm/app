import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DoaryFirebaseUser {
  DoaryFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DoaryFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DoaryFirebaseUser> doaryFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DoaryFirebaseUser>(
      (user) {
        currentUser = DoaryFirebaseUser(user);
        return currentUser!;
      },
    );
