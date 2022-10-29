import 'package:injectable/injectable.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/profile/data/profile_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  YourOneService api;
  ProfileRepositoryImpl({required this.api});

  @override
  Future<UserProfile> getProfile() async {
    return await api
        .apiPersonMeGet()
        .then((value) => UserProfile.fromJson(value.body!.toJson()));
  }

  @override
  Future<UserProfile> updateProfile(UserProfile profile) async {
    return await api
        .apiPersonIdPut(
            id: profile.id, newData: PersonAllDTO.fromJson(profile.toJson()))
        .then((value) => UserProfile.fromJson(value.body!.toJson()));
  }
}
