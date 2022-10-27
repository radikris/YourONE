import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/search/data/search_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchRepository repository;
  SearchCubit(this.repository) : super(SearchState.initial());

  void fetchPartners(Function(List<UserProfile> list) callBack) async {
    final result = await repository.getPotentialPartners();
    emit(SearchState.success(result));
    callBack(result);
  }
}
