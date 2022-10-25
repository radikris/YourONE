import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

abstract class SearchRepository {
  Future<List<PersonAllDTO>> getPotentialPartners();
  Future<bool> postPartnerMatch(bool isRight);
}
