part of 'search_cubit.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.error(String message) = _Error;
  const factory SearchState.success(List<UserProfile> data) = _Success;

  const SearchState._();
}
