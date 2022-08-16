import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?>? get user {
    return _auth.authStateChanges();
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    final credentials = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return credentials.user;
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
