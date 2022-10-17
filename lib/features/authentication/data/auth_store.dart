import 'package:injectable/injectable.dart';

@singleton
class AuthStore {
  String? _currentUserToken;

  String? get currentUserToken => _currentUserToken;

  void login(String token) {
    //TODO FROM SHARED PREF AUTO LOGIN
    _currentUserToken = token;
  }

  void logout() {
    _currentUserToken = null;
  }
}
