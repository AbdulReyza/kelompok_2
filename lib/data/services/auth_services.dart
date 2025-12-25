import 'package:firebase_auth/firebase_auth.dart';
import 'package:kelompok_2/domain/repositories/auth_repositories.dart';

class AuthService implements AuthRepository {
  final _auth = FirebaseAuth.instance;

  @override
  Stream<String?> authStateChanges() => _auth.authStateChanges().map((u) => u?.uid);

  @override
  Future<String?> signIn(String email, String password) async {
    final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return cred.user?.uid;
  }

  @override
  Future<void> signOut() => _auth.signOut();
}