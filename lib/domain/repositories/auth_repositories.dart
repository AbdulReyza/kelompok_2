abstract class AuthRepository {
  Stream<String?> authStateChanges();
  Future<String?> signIn(String email, String password);
  Future<void> signOut();
}
