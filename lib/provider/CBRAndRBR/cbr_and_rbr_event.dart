part of 'cbr_and_rbr_bloc.dart';

@freezed
class CbrAndRbrEvent with _$CbrAndRbrEvent{
  const factory CbrAndRbrEvent.calculated({
    required IList<CaseModel> cases,
    required IList<SymptomModel> symptoms,
}) = _Calculated;
}
