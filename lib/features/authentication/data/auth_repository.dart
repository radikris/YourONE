abstract class AuthRepository {
  Future<void> register();
  Future<String> login();
}
