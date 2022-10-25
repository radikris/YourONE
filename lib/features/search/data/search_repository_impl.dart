import 'package:injectable/injectable.dart';
import 'package:yourone/features/search/cubit/search_cubit.dart';
import 'package:yourone/features/search/data/search_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  YourOneService api;
  SearchRepositoryImpl({required this.api});

  @override
  Future<List<PersonAllDTO>> getPotentialPartners() {
    return api.apiPersonPotentialPartnersGet().then((value) => value.body!);
  }

  @override
  Future<bool> postPartnerMatch(bool isRight) {
    // TODO: implement postPartnerMatch
    throw UnimplementedError();
  }
}
