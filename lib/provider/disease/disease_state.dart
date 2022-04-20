part of 'disease_bloc.dart';

@freezed
class DiseaseState with _$DiseaseState{
  const factory DiseaseState({
    required IList<DiseaseModel> diseases,
    required Option<Either<ResponseError,IList<DiseaseModel>>> optionFailureOrDiseases
})=_DiseaseState;

  factory DiseaseState.initial()=>DiseaseState(
    diseases: <DiseaseModel>[].lock,
    optionFailureOrDiseases: none(),
  );

}
