import 'package:injectable/injectable.dart';
import 'package:yourone/features/profile/data/profile_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  YourOneService api;
  ProfileRepositoryImpl({required this.api});

  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<bool> updateProfile(profile) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
}
