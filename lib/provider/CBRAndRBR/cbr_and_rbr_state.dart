part of 'cbr_and_rbr_bloc.dart';

@freezed
class CbrAndRbrState with _$CbrAndRbrState{
  const factory CbrAndRbrState({
    required String results,
})=_CbrAndRbrState;

  factory CbrAndRbrState.initial()=>const CbrAndRbrState(results: "");

}
