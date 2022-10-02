import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DAMFotografiskaFirebaseUser {
  DAMFotografiskaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DAMFotografiskaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DAMFotografiskaFirebaseUser> dAMFotografiskaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DAMFotografiskaFirebaseUser>(
            (user) => currentUser = DAMFotografiskaFirebaseUser(user));
