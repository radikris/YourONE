import 'package:injectable/injectable.dart';
import 'package:yourone/features/authentication/data/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<String> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> register() {
    // TODO: implement register
    throw UnimplementedError();
  }
}
