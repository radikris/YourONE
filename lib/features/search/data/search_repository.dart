import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

abstract class SearchRepository {
  Future<List<UserProfile>> getPotentialPartners();
  Future<bool> postPartnerMatch(bool isRight);
}
