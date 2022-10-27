import 'package:injectable/injectable.dart';

@singleton
class AuthStore {
  String? _currentUserToken;
  int? _currentUserId;

  String? get currentUserToken => _currentUserToken;
  int? get currentUserId => _currentUserId;

  void login(String token, int? id) {
    //TODO FROM SHARED PREF AUTO LOGIN
    _currentUserToken = token;
    _currentUserId = id;
  }

  void logout() {
    _currentUserToken = null;
    _currentUserId = null;
  }
}

class CurrentUser {
  final String token;
  final int id;

  CurrentUser({required this.token, required this.id});
}
