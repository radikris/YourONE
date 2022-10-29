import 'package:injectable/injectable.dart';
import 'package:yourone/entities/its_a_match.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/search/cubit/search_cubit.dart';
import 'package:yourone/features/search/data/search_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  YourOneService api;
  SearchRepositoryImpl({required this.api});

  @override
  Future<List<UserProfile>> getPotentialPartners() {
    return api.apiPersonPotentialPartnersGet().then((value) =>
        value.body!.map((e) => UserProfile.fromJson(e.toJson())).toList());
  }

  @override
  Future<ItsAMatch?> postPartnerMatch(
      {required int partnerId, required bool toRight}) {
    //TODO itsamatch
    return toRight
        ? api
            .apiPersonPartnerMatchYesPost(partnerId: partnerId)
            .then((value) => null)
        : api
            .apiPersonPartnerMatchNoPost(partnerId: partnerId)
            .then((value) => null);
  }
}
