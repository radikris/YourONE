abstract class SearchRepository {
  Future<List<dynamic>> getPotentialPartners();
  Future<bool> postPartnerMatch(bool isRight);
}
