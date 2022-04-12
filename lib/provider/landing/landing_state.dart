part of 'landing_bloc.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    required int index
})=_LandingState;

  factory LandingState.initial()=>const LandingState(index: 0);

}
