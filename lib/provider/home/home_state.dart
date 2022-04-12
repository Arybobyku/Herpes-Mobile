part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required IList<CaseModel> listCase,
    required bool isLoading,
    required Option<Either<ResponseError, IList<CaseModel>>>
        optionFailureOrCase,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        optionFailureOrCase: none(),
        isLoading: false,
        listCase: <CaseModel>[].lock,
      );
}
