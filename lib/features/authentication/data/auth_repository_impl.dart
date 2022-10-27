import 'package:injectable/injectable.dart';
import 'package:yourone/features/authentication/data/auth_repository.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  YourOneService api;
  AuthRepositoryImpl({required this.api});

  @override
  Future<CurrentUser> login(String email, String password) async {
    return await api
        .apiPersonLoginPost(
            loginData: LoginDTO(username: email, password: password))
        .then((value) => CurrentUser(
            token: value.body!.accessToken, id: value.body!.userId.toInt()));
  }

  @override
  Future<CurrentUser> register(String email, String password) async {
    return await api
        .apiPersonSignUpPost(
            registerData: RegistrationDTO(
                username: 'radi',
                password: '12345678',
                name: 'kriszi',
                email: 'radi.kristof@gmail.com',
                photo: '',
                birthDate: DateTime.now()))
        .then((value) => CurrentUser(
            token: value.body!.accessToken, id: value.body!.userId.toInt()));
  }
}
