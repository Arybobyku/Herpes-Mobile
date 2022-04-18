part of 'symptom_bloc.dart';

@freezed
class SymptomState with _$SymptomState{
  const factory SymptomState({
    required IList<SymptomModel> selectedSymptoms,
    required bool isLoading,
    required Option<Either<ResponseError,IList<SymptomModel>>> optionFailureOrSymptoms,
})= _SymptomState;

  factory SymptomState.initial()=>SymptomState(
    selectedSymptoms: <SymptomModel>[].lock,
    isLoading: false,
    optionFailureOrSymptoms: none(),
  );
}
