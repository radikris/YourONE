import 'dart:async';

abstract class ProfileRepository {
  Future<dynamic> getProfile();
  Future<bool> updateProfile(dynamic profile);
}
