import 'dart:async';
import 'dart:io';

import 'package:yourone/entities/user_profile.dart';

abstract class ProfileRepository {
  Future<UserProfile> getProfile();
  Future<UserProfile> updateProfile(UserProfile profile);
  Future<String> uploadImage(File? file);
}
