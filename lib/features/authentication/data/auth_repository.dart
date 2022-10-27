import 'package:yourone/features/authentication/data/auth_store.dart';

abstract class AuthRepository {
  Future<CurrentUser> register(String email, String password);
  Future<CurrentUser> login(String email, String password);
}
