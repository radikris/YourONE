import 'package:injectable/injectable.dart';
import 'package:yourone/features/authentication/data/auth_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  YourOneService api;
  AuthRepositoryImpl({required this.api});

  @override
  Future<String> login() async {
    return await api
        .apiPersonLoginPost(
            loginData: LoginDTO(username: 'radi', password: '12345678'))
        .then((value) => value.body!.accessToken);
  }

  @override
  Future<String> register() async {
    return await api
        .apiPersonSignUpPost(
            registerData: RegistrationDTO(
                username: 'radi',
                password: '12345678',
                name: 'kriszi',
                email: 'radi.kristof@gmail.com',
                photo: '',
                birthDate: DateTime.now()))
        .then((value) => value.body!.accessToken);
  }
}
