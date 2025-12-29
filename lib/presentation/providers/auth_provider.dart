import 'package:flutter/foundation.dart';
import 'package:kelompok_2/domain/repositories/auth_repositories.dart';

class AuthProvider extends ChangeNotifier {
  final AuthRepository _repo;
  String? uid;
  bool loading = false;
  String? error;

  AuthProvider(this._repo) {
    _repo.authStateChanges().listen((u) {
      uid = u;
      notifyListeners();
    });
  }

  Future<void> signIn(String email, String password) async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      uid = await _repo.signIn(email, password);
    } catch (e) {
      error = e.toString();
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    await _repo.signOut();
  }
}
