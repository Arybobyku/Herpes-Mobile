part of 'cbr_and_rbr_bloc.dart';

@freezed
class CbrAndRbrState with _$CbrAndRbrState {
  const factory CbrAndRbrState({
    required CaseModel caseModel,
    required bool success,
    required double result,
  }) = _CbrAndRbrState;

  factory CbrAndRbrState.initial() => CbrAndRbrState(
        caseModel: CaseModel.initial(),
        success: false,
        result: 0,
      );
}
