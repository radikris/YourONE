import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yourone/entities/its_a_match.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/search/data/search_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchRepository repository;
  SearchCubit(this.repository) : super(SearchState.initial());

  final items = <UserProfile>[];

  void fetchPartners() async {
    final result = await repository.getPotentialPartners();
    emit(SearchState.success(result));
    items.addAll(result);
  }

  Future<ItsAMatchEntity?> swipePartner(
      {required int partnerId, required bool toRight}) async {
    return await repository
        .postPartnerMatch(partnerId: partnerId, toRight: toRight)
        .then((value) =>
            value != null ? ItsAMatchEntity.fromMap(value.toJson()) : null);
  }
}
